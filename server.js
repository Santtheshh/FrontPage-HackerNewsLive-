const axios = require('axios');
const cheerio = require('cheerio');
const WebSocket = require('ws');
const mysql = require('mysql2/promise');
const cron = require('node-cron');
const express = require('express');
const path = require('path');
require('dotenv').config(); // Load environment variables

// MySQL database configuration from environment variables
const dbConfig = {
    host: process.env.DB_HOST,
    user: process.env.DB_USER,
    password: process.env.DB_PASSWORD,
    database: process.env.DB_DATABASE
};

const app = express();
app.use(express.static(path.join(__dirname, 'public'))); // Serve static files

const server = app.listen(8080, () => console.log("Server running on port 8080"));
const wss = new WebSocket.Server({ server });

let clients = [];

// Helper function to get a MySQL connection
async function getConnection() {
    return await mysql.createConnection(dbConfig);
}

// Setup database schema if it doesn't exist
async function setupDatabase() {
    const connection = await getConnection();
    try {
        await connection.execute(`
            CREATE TABLE IF NOT EXISTS stories (
                id INT AUTO_INCREMENT PRIMARY KEY,
                title VARCHAR(255),
                url VARCHAR(255),
                time_published DATETIME,
                score INT,
                created_at DATETIME DEFAULT CURRENT_TIMESTAMP,
                updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
            )
        `);
    } finally {
        await connection.end();
    }
}

// Function to scrape stories from Hacker News
async function scrapeHackerNews() {
    try {
        const response = await axios.get('https://news.ycombinator.com/');
        const $ = cheerio.load(response.data);
        const stories = [];

        // Extract story details from the page
        $('.athing').each((i, el) => {
            const id = $(el).attr('id');
            const title = $(el).find('.titleline > a').text();
            const url = $(el).find('.titleline > a').attr('href');
            const score = parseInt($(el).next().find('.score').text().split(' ')[0]) || 0;
            const time_published = new Date();
            
            stories.push({ id, title, url, score, time_published, created_at: time_published, updated_at: time_published });
        });

        // Save scraped stories to MySQL
        const connection = await getConnection();
        try {
            for (const story of stories) {
                await connection.execute(
                    'INSERT IGNORE INTO stories (id, title, url, time_published, score, created_at, updated_at) VALUES (?, ?, ?, ?, ?, ?, ?)',
                    [story.id, story.title, story.url, story.time_published, story.score, story.created_at, story.updated_at]
                );
            }
        } finally {
            await connection.end();
        }

        // Broadcast new stories to all connected WebSocket clients
        for (const client of clients) {
            client.send(JSON.stringify({ type: 'new', data: stories }));
        }
    } catch (error) {
        console.error('Error scraping Hacker News:', error);
    }
}

// Get stories from the last 5 minutes
async function getRecentStories() {
    const connection = await getConnection();
    const [rows] = await connection.execute(
        'SELECT * FROM stories WHERE time_published >= NOW() - INTERVAL 5 MINUTE'
    );
    await connection.end();
    return rows;
}

// WebSocket handler for new client connections
wss.on('connection', async (ws) => {
    console.log('Client connected');
    clients.push(ws);

    // Send recent stories on initial connection
    const recentStories = await getRecentStories();
    ws.send(JSON.stringify({ type: 'recent', data: recentStories }));

    ws.on('close', () => {
        console.log('Client disconnected');
        clients = clients.filter(client => client !== ws);
    });
});

// Periodic scraping every 5 minutes
cron.schedule('*/5 * * * *', scrapeHackerNews);

// Setup database and start scraping
setupDatabase().then(scrapeHackerNews);
