CREATE DATABASE  IF NOT EXISTS `hacker_news` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `hacker_news`;
-- MySQL dump 10.13  Distrib 8.0.38, for Win64 (x86_64)
--
-- Host: localhost    Database: hacker_news
-- ------------------------------------------------------
-- Server version	8.0.39

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `stories`
--

DROP TABLE IF EXISTS `stories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `stories` (
  `id` int NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `url` varchar(255) DEFAULT NULL,
  `time_published` datetime NOT NULL,
  `score` int DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  `updated_at` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=42748395 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `stories`
--

LOCK TABLES `stories` WRITE;
/*!40000 ALTER TABLE `stories` DISABLE KEYS */;
INSERT INTO `stories` VALUES (42683731,'Physically Based Rendering: From Theory to Implementation','https://pbr-book.org','2025-01-17 17:35:01',199,'2025-01-17 17:35:02','2025-01-17 17:35:02','2025-01-17 17:35:02','2025-01-18 20:22:43'),(42688392,'Titans: Learning to Memorize at Test Time','https://arxiv.org/abs/2501.00663','2025-01-17 17:35:01',82,'2025-01-17 17:35:01','2025-01-17 17:35:01','2025-01-17 17:35:01','2025-01-18 20:22:43'),(42689054,'A UC Santa Cruz professor unearthed the oldest alphabet yet','https://www.universityofcalifornia.edu/news/how-uc-santa-cruz-professor-unearthed-oldest-alphabet-yet','2025-01-17 17:35:01',89,'2025-01-17 17:35:01','2025-01-17 17:35:01','2025-01-17 17:35:01','2025-01-18 20:22:43'),(42693748,'DoubleClickjacking: A New type of web hacking technique','https://www.paulosyibelo.com/2024/12/doubleclickjacking-what.html','2025-01-18 20:23:38',191,'2025-01-18 20:23:38','0000-00-00 00:00:00','0000-00-00 00:00:00','2025-01-18 20:23:38'),(42694384,'Show HN: Decentralized robots (and things) orchestration system','https://docs.p2p.industries','2025-01-17 17:35:01',16,'2025-01-17 17:35:01','2025-01-17 17:35:01','2025-01-17 17:35:01','2025-01-18 20:22:43'),(42694732,'PostgreSQL Anonymizer','https://postgresql-anonymizer.readthedocs.io/en/stable/','2025-01-17 17:35:01',162,'2025-01-17 17:35:01','2025-01-17 17:35:01','2025-01-17 17:35:01','2025-01-18 20:22:43'),(42695232,'Data evolution with set-theoretic types','https://dashbit.co/blog/data-evolution-with-set-theoretic-types','2025-01-18 20:23:38',107,'2025-01-18 20:23:38','0000-00-00 00:00:00','0000-00-00 00:00:00','2025-01-18 20:23:38'),(42696398,'Engineering \"home-cooked\" software','https://ownerofhappy.org/software-fast-food','2025-01-17 17:35:01',23,'2025-01-17 17:35:01','2025-01-17 17:35:01','2025-01-17 17:35:01','2025-01-18 20:22:43'),(42697001,'Lightcell: An engine that uses light to make electricity','https://www.lightcellenergy.com/','2025-01-18 20:23:38',175,'2025-01-18 20:23:38','0000-00-00 00:00:00','0000-00-00 00:00:00','2025-01-18 20:23:38'),(42700483,'Generating an infinite world with the Wave Function Collapse algorithm','https://marian42.de/article/infinite-wfc/','2025-01-18 20:32:58',3,'2025-01-18 20:32:58','0000-00-00 00:00:00','0000-00-00 00:00:00','2025-01-18 20:32:58'),(42701198,'I deleted all of my email filters','https://coryd.dev/posts/2025/i-deleted-all-of-my-email-filters','2025-01-18 21:43:34',5,'2025-01-18 21:43:34','0000-00-00 00:00:00','0000-00-00 00:00:00','2025-01-18 21:43:34'),(42703816,'Maze Generation: Recursive Division (2011)','http://weblog.jamisbuck.org/2011/1/12/maze-generation-recursive-division-algorithm','2025-01-18 20:23:38',35,'2025-01-18 20:23:38','0000-00-00 00:00:00','0000-00-00 00:00:00','2025-01-18 20:23:38'),(42707660,'Trapped in the dark for 35 hours – Red Sea dive-boat survivors tell of escapes','https://www.bbc.com/news/articles/cp3z0k72yw3o','2025-01-18 20:23:38',53,'2025-01-18 20:23:38','0000-00-00 00:00:00','0000-00-00 00:00:00','2025-01-18 20:23:38'),(42710296,'Tcl\'s bet on screens that look like paper','https://notes.ghed.in/posts/2025/tcl-nxtpaper-screen-tech/','2025-01-18 20:23:38',14,'2025-01-18 20:23:38','0000-00-00 00:00:00','0000-00-00 00:00:00','2025-01-18 20:23:38'),(42711012,'Playful Drawings That Charles Darwin\'s Children Left on His Manuscripts','https://www.openculture.com/2025/01/discover-the-playful-drawings-that-charles-darwins-children-left-on-his-manuscripts.html','2025-01-18 20:23:38',42,'2025-01-18 20:23:38','0000-00-00 00:00:00','0000-00-00 00:00:00','2025-01-18 20:23:38'),(42717393,'2k-year-old wine and the uncanny immediacy of the past','https://resobscura.substack.com/p/2000-year-old-wine-and-the-uncanny','2025-01-17 17:35:01',222,'2025-01-17 17:35:02','2025-01-17 17:35:02','2025-01-17 17:35:02','2025-01-18 20:22:43'),(42722855,'A standards-first web framework','https://nuejs.org/blog/standards-first-web-framework/','2025-01-17 17:35:01',132,'2025-01-17 17:35:02','2025-01-17 17:35:02','2025-01-17 17:35:02','2025-01-18 20:22:43'),(42725147,'Nepenthes is a tarpit to catch AI web crawlers','https://zadzmo.org/code/nepenthes/','2025-01-17 17:35:01',587,'2025-01-17 17:35:01','2025-01-17 17:35:01','2025-01-17 17:35:01','2025-01-18 20:22:43'),(42725385,'No Calls','https://keygen.sh/blog/no-calls/','2025-01-17 17:35:01',1401,'2025-01-17 17:35:01','2025-01-17 17:35:01','2025-01-17 17:35:01','2025-01-18 20:22:43'),(42730126,'Framework for Artificial Intelligence Diffusion','https://www.federalregister.gov/documents/2025/01/15/2025-00636/framework-for-artificial-intelligence-diffusion','2025-01-17 17:35:01',144,'2025-01-17 17:35:02','2025-01-17 17:35:02','2025-01-17 17:35:02','2025-01-18 20:22:43'),(42731091,'Starship Flight 7','https://www.spacex.com/launches/mission/?missionId=starship-flight-7?submit','2025-01-17 17:35:01',594,'2025-01-17 17:35:01','2025-01-17 17:35:01','2025-01-17 17:35:01','2025-01-18 20:22:43'),(42731417,'Show HN: Real-time nonlinear optics simulation (JS/GLSL)','https://github.com/westoncb/nonlinear-optics-sandbox','2025-01-17 17:35:01',8,'2025-01-17 17:35:01','2025-01-17 17:35:01','2025-01-17 17:35:01','2025-01-18 20:22:43'),(42731582,'Learn Yjs Interactively','https://learn.yjs.dev/','2025-01-17 17:35:01',256,'2025-01-17 17:35:01','2025-01-17 17:35:01','2025-01-17 17:35:01','2025-01-18 20:22:43'),(42732728,'Is the world becoming uninsurable?','https://charleshughsmith.substack.com/p/is-the-world-becoming-uninsurable','2025-01-17 17:35:01',343,'2025-01-17 17:35:01','2025-01-17 17:35:01','2025-01-17 17:35:01','2025-01-18 20:22:43'),(42733640,'Bypassing disk encryption on systems with automatic TPM2 unlock','https://oddlama.org/blog/bypassing-disk-encryption-with-tpm2-unlock/','2025-01-17 17:35:01',163,'2025-01-17 17:35:01','2025-01-17 17:35:01','2025-01-17 17:35:01','2025-01-18 20:22:43'),(42734478,'Let\'s talk about AI and end-to-end encryption','https://blog.cryptographyengineering.com/2025/01/17/lets-talk-about-ai-and-end-to-end-encryption/','2025-01-17 17:35:01',32,'2025-01-17 17:35:01','2025-01-17 17:35:01','2025-01-17 17:35:01','2025-01-18 20:22:43'),(42734851,'Issues with Color Spaces and Perceptual Brightness','https://johnaustin.io/articles/2025/issues-with-cielab-and-perceptual-brightness','2025-01-17 17:35:01',95,'2025-01-17 17:35:01','2025-01-17 17:35:01','2025-01-17 17:35:01','2025-01-18 20:22:43'),(42734956,'Trusting clients is probably a security flaw','https://liberda.nl/weblog/trust-no-client/','2025-01-17 17:35:01',125,'2025-01-17 17:35:01','2025-01-17 17:35:01','2025-01-17 17:35:01','2025-01-18 20:22:43'),(42735393,'Canon wants us to pay for using our own camera as a webcam','https://romanzipp.com/blog/no-you-cant-use-your-6299-canon-camera-as-a-webcam','2025-01-17 17:35:01',887,'2025-01-17 17:35:01','2025-01-17 17:35:01','2025-01-17 17:35:01','2025-01-18 20:22:43'),(42735413,'The Family Bass - Music with an NES','https://www.linusakesson.net/music/family-bass/index.php','2025-01-17 17:35:01',79,'2025-01-17 17:35:01','2025-01-17 17:35:01','2025-01-17 17:35:01','2025-01-18 20:22:43'),(42735767,'Ask HN: How can I realistically change careers?','item?id=42735767','2025-01-17 17:35:01',93,'2025-01-17 17:35:01','2025-01-17 17:35:01','2025-01-17 17:35:01','2025-01-18 20:22:43'),(42736968,'The Derelict (2015)','https://www.damninteresting.com/the-derelict/','2025-01-17 17:35:01',7,'2025-01-17 17:35:01','2025-01-17 17:35:01','2025-01-17 17:35:01','2025-01-18 20:22:43'),(42737778,'Show HN: Interactive game teaching dark patterns in UX design','https://games.productartistry.com/games/dark-patterns','2025-01-17 17:35:01',27,'2025-01-17 17:35:01','2025-01-17 17:35:01','2025-01-17 17:35:01','2025-01-18 20:22:43'),(42737985,'Ozempic and Wegovy are selected for Medicare\'s price negotiations','https://apnews.com/article/drug-prices-medicare-biden-trump-aae2271614f5959b484e5f081313f2e1','2025-01-17 17:35:01',15,'2025-01-17 17:35:01','2025-01-17 17:35:01','2025-01-17 17:35:01','2025-01-18 20:22:43'),(42738284,'Project Mini Rack – compact and portable homelabs','https://www.jeffgeerling.com/blog/2025/project-mini-rack-compact-and-portable-homelabs','2025-01-17 17:40:01',5,'2025-01-17 17:40:02','2025-01-17 17:40:02','2025-01-17 17:40:02','2025-01-18 20:22:43'),(42738464,'Supreme Court rules to uphold TikTok ban, setting stage for shutdown','https://www.cnbc.com/2025/01/17/supreme-court-rules-to-uphold-tiktok-ban.html','2025-01-17 17:35:01',418,'2025-01-17 17:35:01','2025-01-17 17:35:01','2025-01-17 17:35:01','2025-01-18 20:22:43'),(42738656,'Show HN: GUI for Editing Mermaid Class Diagrams','https://docs.mermaidchart.com/blog/posts/gui-for-editing-mermaid-class-diagrams','2025-01-17 17:35:01',66,'2025-01-17 17:35:01','2025-01-17 17:35:01','2025-01-17 17:35:01','2025-01-18 20:22:43'),(42739163,'Selling the Collective: On Kevin Killian\'s \"Selected Amazon Reviews\"','https://www.clereviewofbooks.com/writing/kevin-killian-selling-the-collective','2025-01-17 17:35:01',3,'2025-01-17 17:35:01','2025-01-17 17:35:01','2025-01-17 17:35:01','2025-01-18 20:22:43'),(42739572,'French modernists were alarmed, inspired by newspaper\'s voracious dynamism','https://aeon.co/essays/the-french-modernists-loathed-and-loved-the-mass-media-of-their-day','2025-01-17 17:35:01',21,'2025-01-17 17:35:01','2025-01-17 17:35:01','2025-01-17 17:35:01','2025-01-18 20:22:43'),(42740301,'Keeling Labs (YC W23) Is Hiring an ML Engineer for Grid-Scale Energy Storage','https://www.keelinglabs.com/jobs?ashby_jid=81b48fb8-8176-4529-a38d-8fc736ebe2aa','2025-01-17 17:35:01',0,'2025-01-17 17:35:01','2025-01-17 17:35:01','2025-01-17 17:35:01','2025-01-18 20:22:43'),(42740596,'Brood War Korean Translations','https://blog.sourcedive.net/brood-war-korean-translations/','2025-01-17 17:40:01',6,'2025-01-17 17:40:01','2025-01-17 17:40:01','2025-01-17 17:40:01','2025-01-18 20:22:43'),(42741155,'Hands-On Graphics Without X11','https://blogsystem5.substack.com/p/netbsd-graphics-wo-x11','2025-01-18 20:23:38',132,'2025-01-18 20:23:38','0000-00-00 00:00:00','0000-00-00 00:00:00','2025-01-18 20:23:38'),(42742161,'Higher potassium intake at dinner linked to fewer sleep disturbances – study','https://www.nutraingredients-asia.com/Article/2025/01/07/higher-potassium-intake-at-dinner-linked-to-fewer-sleep-disturbances/','2025-01-18 20:23:38',170,'2025-01-18 20:23:38','0000-00-00 00:00:00','0000-00-00 00:00:00','2025-01-18 20:23:38'),(42742184,'Branchless UTF-8 Encoding','https://cceckman.com/writing/branchless-utf8-encoding/','2025-01-18 20:23:38',157,'2025-01-18 20:23:38','0000-00-00 00:00:00','0000-00-00 00:00:00','2025-01-18 20:23:38'),(42742350,'Show HN: Compile C to Not Gates','https://github.com/tomhea/c2fj','2025-01-18 20:23:38',127,'2025-01-18 20:23:38','0000-00-00 00:00:00','0000-00-00 00:00:00','2025-01-18 20:23:38'),(42743019,'So you want to build your own data center','https://blog.railway.com/p/data-center-build-part-one','2025-01-18 20:23:38',405,'2025-01-18 20:23:38','0000-00-00 00:00:00','0000-00-00 00:00:00','2025-01-18 20:23:38'),(42743033,'Investigating an “evil” RJ45 dongle','https://lcamtuf.substack.com/p/investigating-an-evil-rj45-dongle','2025-01-18 20:23:38',421,'2025-01-18 20:23:38','0000-00-00 00:00:00','0000-00-00 00:00:00','2025-01-18 20:23:38'),(42744695,'EFF statement on U.S. Supreme Court\'s decision to uphold TikTok ban','https://www.eff.org/deeplinks/2025/01/eff-statement-us-supreme-courts-decision-uphold-tiktok-ban','2025-01-18 20:23:38',172,'2025-01-18 20:23:38','0000-00-00 00:00:00','0000-00-00 00:00:00','2025-01-18 20:23:38'),(42744820,'Spellbrush (YC W18) Is Hiring Game Programmers (Anime SRPG/Tactics)','item?id=42744820','2025-01-18 20:23:38',0,'2025-01-18 20:23:38','0000-00-00 00:00:00','0000-00-00 00:00:00','2025-01-18 20:23:38'),(42745334,'Can you read this cursive handwriting? The National Archives wants your help','https://www.smithsonianmag.com/smart-news/can-you-read-this-cursive-handwriting-the-national-archives-wants-your-help-180985833/','2025-01-18 20:23:38',144,'2025-01-18 20:23:38','0000-00-00 00:00:00','0000-00-00 00:00:00','2025-01-18 20:23:38'),(42746506,'ELIZA Reanimated','https://arxiv.org/abs/2501.06707','2025-01-18 21:43:34',15,'2025-01-18 21:43:34','0000-00-00 00:00:00','0000-00-00 00:00:00','2025-01-18 21:43:34'),(42746752,'Show HN: I made a mini golf in my lunch time','https://paper-golf.netlify.app/','2025-01-18 20:27:21',7,'2025-01-18 20:27:21','0000-00-00 00:00:00','0000-00-00 00:00:00','2025-01-18 20:27:21'),(42747065,'Honest Ahmed (2011)','https://bugzilla.mozilla.org/show_bug.cgi?id=647959','2025-01-18 20:23:38',93,'2025-01-18 20:23:38','0000-00-00 00:00:00','0000-00-00 00:00:00','2025-01-18 20:23:38'),(42747864,'The AMD Radeon Instinct MI300A\'s Giant Memory Subsystem','https://chipsandcheese.com/p/inside-the-amd-radeon-instinct-mi300as','2025-01-18 20:23:38',27,'2025-01-18 20:23:38','0000-00-00 00:00:00','0000-00-00 00:00:00','2025-01-18 20:23:38'),(42747877,'Windows BitLocker – Screwed Without a Screwdriver','https://neodyme.io/en/blog/bitlocker_screwed_without_a_screwdriver/','2025-01-18 20:23:38',5,'2025-01-18 20:23:38','0000-00-00 00:00:00','0000-00-00 00:00:00','2025-01-18 20:23:38'),(42747899,'The Toyota Prius Transformed the Auto Industry','https://spectrum.ieee.org/toyota-prius-transformed-auto-industry','2025-01-18 20:23:38',60,'2025-01-18 20:23:38','0000-00-00 00:00:00','0000-00-00 00:00:00','2025-01-18 20:23:38'),(42748394,'Ask HN: Has anyone tried alternative company models (like a co-op) for SaaS?','item?id=42748394','2025-01-18 20:23:38',7,'2025-01-18 20:23:38','0000-00-00 00:00:00','0000-00-00 00:00:00','2025-01-18 20:23:38');
/*!40000 ALTER TABLE `stories` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-01-18 21:53:55
