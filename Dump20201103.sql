-- MySQL dump 10.13  Distrib 5.7.31, for Linux (x86_64)
--
-- Host: us-cdbr-east-02.cleardb.com    Database: heroku_fe87f700b25b4a0
-- ------------------------------------------------------
-- Server version	5.5.62-log

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `directors`
--

DROP TABLE IF EXISTS `directors`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `directors` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(250) NOT NULL,
  PRIMARY KEY (`name`),
  UNIQUE KEY `id_UNIQUE` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=211 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `directors`
--

LOCK TABLES `directors` WRITE;
/*!40000 ALTER TABLE `directors` DISABLE KEYS */;
INSERT INTO `directors` VALUES (1,'Adrian Lyne'),(2,'Akira Kurosawa'),(3,'Alain Resnais'),(4,'Alfred Hitchcock'),(5,'Andy Wachowski'),(6,'Anthony Mann'),(7,'Arthur Lipsett'),(8,'Arthur Penn'),(9,'Barry Levinson'),(10,'Billy Wilder'),(11,'Bob Sweeney'),(12,'Bobby Quinn'),(13,'Bretaigne Windust'),(14,'Brian De Palma'),(15,'Bruce Gowers'),(16,'Burt Gillett'),(17,'Cameron Crowe'),(18,'Carl Boese'),(19,'Carol Reed'),(20,'Cecil B. Demille'),(21,'Charles Chaplin'),(22,'Charles S. Dubin'),(23,'Cliff Bole'),(24,'Clint Eastwood'),(25,'Clyde Bruckman'),(26,'Clyde Geronimi'),(27,'D.W. Griffith'),(28,'Dave Wilson'),(29,'David Fincher'),(30,'David Lean'),(31,'Dennis Donnelly'),(32,'Dennis Hopper'),(33,'Don Siegel'),(34,'Douglas Camfield'),(35,'Edouard Molinaro'),(36,'Edward F. Cline'),(37,'Edward L. Cahn'),(38,'Edwin S. Porter'),(39,'Elia Kazan'),(40,'Erich Von Stroheim'),(41,'Ernst Lubitsch'),(42,'F.W. Murnau'),(43,'Federico Fellini'),(44,'Francis Ford Coppola'),(45,'Frank Capra'),(46,'Frank Lloyd'),(47,'Franklin J. Schaffner'),(48,'Fred Zinnemann'),(49,'Fritz Lang'),(50,'George A. Romero'),(51,'George Cukor'),(52,'George Lucas'),(53,'George Roy Hill'),(54,'George Schaefer'),(55,'George Stevens'),(56,'Gerald Potterton'),(57,'Gerard Damiano'),(58,'Giovanni Pastrone'),(59,'Gordon Douglas'),(60,'Gregory J. Bonann'),(61,'Guy Hamilton'),(62,'Harry O. Hoyt'),(63,'Henry Lehrman'),(64,'Hollingsworth Morse'),(65,'Ingmar Bergman'),(66,'Irvin Kershner'),(67,'Ishirccab Honda'),(68,'Ivan Reitman'),(69,'J. Searle Dawley'),(70,'Jack Arnold'),(71,'James Algar'),(72,'James Cameron'),(73,'James Parrott'),(74,'James W. Horne'),(75,'James Whale'),(76,'Jean Renoir'),(77,'Jean Vigo'),(78,'Jerome Robbins'),(79,'Jerry Paris'),(80,'Jim Sharman'),(81,'John Badham'),(82,'John Boorman'),(83,'John Brahm'),(84,'John Carpenter'),(85,'John Cromwell'),(86,'John Ford'),(87,'John G. Avildsen'),(88,'John Huston'),(89,'John Landis'),(90,'John Mctiernan'),(91,'John Moffitt'),(92,'John Nicolella'),(93,'John Sturges'),(94,'Jonathan Demme'),(95,'Josef Von Sternberg'),(96,'Joseph Barbera'),(97,'Joseph C. Terry'),(98,'Joy Batchelor'),(99,'Karl Freund'),(100,'Kevin Mccarthy'),(101,'Kim Manners'),(102,'L. Frank Baum'),(103,'Lee Sholem'),(104,'Leni Riefenstahl'),(105,'Leo Mccarey'),(106,'Lewis Gilbert'),(107,'Lewis Milestone'),(108,'Lisa Simon'),(109,'Luis Bu1Uel'),(110,'Luis El'),(111,'Marc Daniels'),(112,'Mark Kirkland'),(113,'Martin Scorsese'),(114,'Maurice Tourneur'),(115,'Maya Deren'),(116,'Merian C. Cooper'),(117,'Mervyn Leroy'),(118,'Michael Curtiz'),(119,'Michael Oherlihy'),(120,'Mike Nichols'),(121,'Milos Forman'),(122,'Nicholas Ray'),(123,'Norman Ferguson'),(124,'Norman Tokar'),(125,'Orson Welles'),(126,'Oscar Rudolph'),(127,'Otto Preminger'),(128,'Peter Harris'),(129,'Peter Jackson'),(130,'Phil Karlson'),(131,'Quentin Tarantino'),(132,'Randal Kleiser'),(133,'Ray Enright'),(134,'Richard Donner'),(135,'Richard Fleischer'),(136,'Richard Marquand'),(137,'Ridley Scott'),(138,'Rob Klug'),(139,'Rob Reiner'),(140,'Robert Clouse'),(141,'Robert Stevenson'),(142,'Robert Wise'),(143,'Robert Zemeckis'),(144,'Roger Allers'),(145,'Roman Polanski'),(146,'Sam Peckinpah'),(147,'Sam Raimi'),(148,'Samuel Armstrong'),(149,'Samuel Fuller'),(150,'Sean S. Cunningham'),(151,'Sergei M. Eisenstein'),(152,'Sergio Leone'),(153,'Stanley Donen'),(154,'Stanley Kramer'),(155,'Stanley Kubrick'),(156,'Steven Soderbergh'),(157,'Steven Spielberg'),(158,'Ted Kotcheff'),(159,'Terence Young'),(160,'Tobe Hooper'),(161,'Tod Browning'),(162,'Tony Scott'),(163,'Victor Fleming'),(164,'W.S. Van Dyke'),(165,'Walt Disney'),(166,'Walter Grauman'),(167,'Wes Craven'),(168,'William A. Wellman'),(169,'William Asher'),(170,'William Cottrell'),(171,'William F. Claxton'),(172,'William Friedkin'),(173,'William Wyler'),(174,'Winsor Mccay'),(175,'Yevgeni Bauer'),(181,'Akshay'),(191,'Akshay Patel'),(201,'A Patel');
/*!40000 ALTER TABLE `directors` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `genres`
--

DROP TABLE IF EXISTS `genres`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `genres` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  PRIMARY KEY (`name`),
  UNIQUE KEY `id_UNIQUE` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `genres`
--

LOCK TABLES `genres` WRITE;
/*!40000 ALTER TABLE `genres` DISABLE KEYS */;
INSERT INTO `genres` VALUES (1,'Action'),(2,'Adult'),(3,'Adventure'),(4,'Animation'),(5,'Biography'),(6,'Comedy'),(7,'Crime'),(8,'Documentary'),(9,'Drama'),(10,'Family'),(11,'Fantasy'),(12,'Film-Noir'),(13,'Game-Show'),(14,'History'),(15,'Horror'),(16,'Music'),(17,'Musical'),(18,'Mystery'),(19,'News'),(20,'Reality-Tv'),(21,'Romance'),(22,'Sci-Fi'),(23,'Short'),(24,'Sport'),(25,'Talk-Show'),(26,'Thriller'),(27,'War'),(28,'Western');
/*!40000 ALTER TABLE `genres` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `movies`
--

DROP TABLE IF EXISTS `movies`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `movies` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(250) NOT NULL,
  `imdb_score` decimal(2,1) NOT NULL,
  `director_id` varchar(250) NOT NULL,
  PRIMARY KEY (`name`),
  UNIQUE KEY `id_UNIQUE` (`id`),
  KEY `imdb_score` (`imdb_score`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=4981 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `movies`
--

LOCK TABLES `movies` WRITE;
/*!40000 ALTER TABLE `movies` DISABLE KEYS */;
INSERT INTO `movies` VALUES (2601,'2001 : A Space Odyssey',8.4,'155'),(3991,'21-87',7.5,'7'),(3661,'5 Against The House',6.0,'130'),(4141,'60 Minutes',6.4,'138'),(3901,'8Xe5',8.2,'43'),(2811,'A Clockwork Orange',8.5,'155'),(3481,'A Nightmare On Elm Street',7.4,'167'),(4431,'A Place In The Sun',7.8,'55'),(4971,'Akshay_S B6',8.3,'201'),(3361,'Algiers',7.0,'85'),(3041,'Alien',8.5,'137'),(3351,'Aliens',8.5,'72'),(3761,'All Quiet On The Western Front',8.2,'107'),(4601,'American Idol : The Search For A Superstar',4.8,'15'),(4011,'Animal Farm',7.1,'98'),(2661,'Apocalypse Now',8.6,'44'),(3831,'At Land',7.4,'115'),(3181,'Back To The Future',8.4,'143'),(3531,'Bambi',7.6,'71'),(3151,'Batman',7.7,'126'),(4751,'Baywatch',4.9,'60'),(3321,'Ben-Hur',8.2,'173'),(3591,'Blade Runner',8.3,'137'),(4851,'Bonanza',7.4,'171'),(4071,'Bonnie And Clyde',8.0,'8'),(3641,'Bride Of Frankenstein',8.0,'75'),(2781,'Bronenosets Potyomkin',8.1,'151'),(4551,'Butch Cassidy And The Sundance Kid',8.2,'53'),(2531,'Cabiria',6.6,'58'),(3941,'Carrie',7.4,'14'),(2581,'Casablanca',8.8,'118'),(4101,'Cera Una Volta Il West',8.8,'152'),(2731,'Chang : A Drama Of The Wilderness',7.4,'116'),(4961,'Charlies Angels',6.6,'31'),(4631,'Chinatown',8.5,'145'),(4351,'Cinderella',7.4,'26'),(2751,'Citizen Kane',8.6,'125'),(3621,'Close Encounters Of The Third Kind',7.8,'157'),(3301,'College',7.2,'74'),(4841,'Dawn Of The Dead',8.0,'50'),(4281,'Deep Throat',5.2,'57'),(3191,'Deliverance',7.9,'82'),(3771,'Der Golem, Wie Er In Die Welt Kam',7.4,'18'),(4161,'Die Hard',8.3,'90'),(3261,'Dirty Harry',7.9,'33'),(3911,'Doctor Who',8.6,'34'),(2711,'Dr. No',7.3,'159'),(3071,'Dr. Strangelove Or : How I Learned To Stop Worrying And Love The Bomb',8.6,'155'),(3121,'Dracula',7.7,'161'),(3721,'Dreams Of The Rarebit Fiend : The Pet',7.1,'174'),(3801,'Duel',7.7,'157'),(3281,'Dumbo',7.5,'148'),(2881,'E.T. : The Extra-Terrestrial',7.9,'157'),(4181,'Easy Rider',7.3,'32'),(4671,'El',7.8,'110'),(4301,'Enter The Dragon',7.6,'140'),(4541,'Fantastic Voyage',6.8,'135'),(4861,'Fatal Attraction',6.8,'1'),(4611,'Fight Club',8.8,'29'),(3131,'First Blood',7.5,'158'),(4581,'Forrest Gump',8.6,'143'),(2821,'Frankenstein',8.0,'75'),(4491,'Friday The 13Th',6.3,'150'),(3551,'From Here To Eternity',7.9,'48'),(4261,'From Russia With Love',7.5,'159'),(4681,'Full Metal Jacket',8.4,'155'),(2971,'Ghost Busters',7.8,'68'),(3521,'Gilligans Island',7.8,'70'),(3701,'Gojira',7.3,'67'),(3021,'Goldfinger',7.9,'61'),(2671,'Gone With The Wind',8.2,'163'),(4931,'Goodfellas',8.8,'113'),(4401,'Grease',7.0,'132'),(3371,'Greed',8.1,'40'),(4741,'Gryozy',7.4,'175'),(3561,'Halloween',7.9,'84'),(3871,'Happy Days',7.7,'79'),(4951,'Hawaii Five-O',7.6,'119'),(4761,'Heavy Metal',6.4,'56'),(4371,'High Noon',8.3,'48'),(2991,'His Majesty, The Scarecrow Of Oz',6.0,'102'),(3691,'His Trust',5.3,'27'),(3681,'His Trust Fulfilled',4.7,'27'),(3171,'I Am A Fugitive From A Chain Gang',8.1,'117'),(3571,'I Love Lucy',9.0,'169'),(2921,'Il Buono, Il Brutto, Il Cattivo.',9.0,'152'),(3781,'In Like Flint',5.9,'59'),(4411,'Intolerance : Loves Struggle Throughout The Ages',8.1,'27'),(4191,'Invasion Of The Body Snatchers',8.0,'33'),(4871,'It! The Terror From Beyond Space',6.0,'37'),(3241,'Its A Wonderful Life',8.7,'45'),(2641,'Jaws',8.3,'157'),(4051,'Jeopardy!',8.6,'100'),(4521,'Jerry Maguire',7.3,'17'),(3841,'Jurassic Park',7.9,'157'),(3671,'Kagemusha',7.9,'2'),(2551,'King Kong',8.0,'116'),(4731,'Kojak',7.3,'22'),(3031,'La Dolce Vita',8.1,'43'),(2841,'La Grande Illusion',8.2,'76'),(4211,'Lady In A Cage',6.8,'166'),(4201,'Lanncca9E Derniccacre Ccca Marienbad',7.8,'3'),(4821,'Latalante',8.0,'77'),(4171,'Laura',8.2,'127'),(3471,'Lawrence Of Arabia',8.5,'30'),(4061,'Leave It To Beaver',8.2,'124'),(4151,'Lolita',7.7,'155'),(3921,'M',8.6,'49'),(3581,'Mad Love',7.4,'99'),(3601,'Mary Poppins',7.7,'141'),(2561,'Metropolis',8.4,'49'),(4911,'Miami Vice',7.8,'92'),(3931,'Moby Dick',7.4,'88'),(4391,'Mr. Smith Goes To Washington',8.4,'45'),(4661,'Mutiny On The Bounty',7.9,'46'),(4471,'My Darling Clementine',7.9,'86'),(3271,'My Fair Lady',7.9,'51'),(2861,'Night Of The Living Dead',8.0,'50'),(3501,'North By Northwest',8.6,'4'),(3051,'Nosferatu, Eine Symphonie Des Grauens',8.1,'42'),(3821,'Oklahoma!',7.1,'48'),(2951,'On The Waterfront',8.4,'39'),(4081,'One Flew Over The Cuckoos Nest',8.9,'121'),(3861,'Paths Of Glory',8.6,'155'),(4831,'Persona',8.2,'65'),(4901,'Peter Pan',7.3,'26'),(3981,'Pinocchio',7.7,'123'),(4131,'Plane Crazy',7.5,'165'),(3741,'Planet Of The Apes',8.0,'47'),(4511,'Play Misty For Me',7.0,'24'),(2541,'Psycho',8.7,'4'),(3331,'Pulp Fiction',9.0,'131'),(3491,'Pygmalion',7.8,'54'),(2851,'Raiders Of The Lost Ark',8.7,'157'),(4811,'Rain Man',8.0,'9'),(3341,'Rear Window',8.7,'4'),(3201,'Rebecca',8.4,'4'),(3951,'Rebel Without A Cause',7.9,'122'),(4421,'Reservoir Dogs',8.4,'131'),(4621,'Revenge Of The Creature',5.1,'70'),(3091,'Rocky',8.1,'87'),(2771,'Rosemarys Baby',8.1,'145'),(3881,'Saturday Night Fever',6.8,'81'),(4091,'Saturday Night Live',8.1,'28'),(3081,'Scarface',8.2,'14'),(4001,'Scooby Doo, Where Are You!',8.1,'96'),(2831,'Sesame Street',8.5,'108'),(3251,'Sex, Lies, And Videotape',7.1,'156'),(2631,'Shadow Of A Doubt',8.1,'4'),(4031,'Shane',7.8,'55'),(4331,'She Wore A Yellow Ribbon',7.3,'86'),(3631,'Shichinin No Samurai',8.8,'2'),(4291,'Shock Corridor',7.6,'149'),(2941,'Singin In The Rain',8.4,'153'),(2651,'Snow White',6.4,'69'),(2591,'Snow White And The Seven Dwarfs',7.9,'170'),(4591,'Some Like It Hot',8.4,'10'),(3711,'Spartacus',8.0,'155'),(3811,'Stachka',7.8,'151'),(3851,'Stagecoach',7.9,'86'),(2571,'Star Trek',8.6,'111'),(4721,'Star Trek : The Next Generation',8.8,'23'),(2521,'Star Wars',8.8,'52'),(4921,'Star Wars : Episode I - The Phantom Menace',6.4,'52'),(2791,'Star Wars : Episode V - The Empire Strikes Back',8.8,'66'),(3611,'Star Wars : Episode Vi - Return Of The Jedi',8.3,'136'),(4111,'Sunrise : A Song Of Two Humans',8.4,'42'),(4481,'Sunset Blvd.',8.7,'10'),(3961,'Superman',7.3,'134'),(4021,'Swing Your Lady',4.8,'133'),(2981,'Tarzan The Ape Man',7.1,'164'),(4361,'Tarzans Magic Fountain',5.5,'103'),(2911,'Taxi Driver',8.6,'113'),(3411,'Terminator 2 : Judgment Day',8.5,'72'),(4561,'The Andy Griffith Show',8.6,'11'),(3441,'The Bangville Police',5.5,'63'),(2931,'The Battle At Elderbush Gulch',6.6,'27'),(3791,'The Bells Of St. Marys',7.4,'105'),(3291,'The Birds',7.9,'4'),(2621,'The Birth Of A Nation',7.1,'27'),(4571,'The Blues Brothers',7.9,'89'),(3461,'The Brady Bunch',7.0,'126'),(3231,'The Bridge On The River Kwai',8.4,'30'),(3391,'The Circus',7.9,'21'),(4771,'The Day The Earth Stood Still',8.0,'142'),(4941,'The Egyptian',6.2,'118'),(4531,'The Enforcer',7.3,'13'),(4221,'The Evil Dead',7.6,'147'),(2741,'The Exorcist',8.1,'172'),(3141,'The Flintstones',8.0,'96'),(4891,'The French Connection',7.9,'172'),(2961,'The General',8.4,'25'),(2611,'The Godfather',9.2,'44'),(4451,'The Gold Rush',8.3,'21'),(3431,'The Graduate',8.2,'120'),(4501,'The Great Escape',8.3,'93'),(3011,'The Great Train Robbery',7.5,'38'),(4041,'The Karate Kid',6.9,'87'),(4121,'The Lion King',8.2,'144'),(4271,'The Lone Ranger',8.1,'64'),(4651,'The Lord Of The Rings : The Fellowship Of The Ring',8.8,'129'),(3161,'The Lost Patrol',7.0,'86'),(2801,'The Lost World',7.1,'62'),(4311,'The Magnificent Seven',7.8,'93'),(3731,'The Maltese Falcon',8.4,'88'),(3451,'The Matrix',8.7,'5'),(2681,'The Merry Widow',7.6,'41'),(3971,'The Muppet Show',8.8,'128'),(3421,'The Oprah Winfrey Show',6.0,'97'),(3891,'The Philadelphia Story',8.1,'51'),(2891,'The Poor Little Rich Girl',6.9,'114'),(4691,'The Pride And The Passion',5.5,'154'),(4791,'The Public Enemy',7.8,'168'),(4801,'The Rocky Horror Picture Show',7.1,'80'),(3211,'The Scarecrow',8.0,'36'),(3751,'The Sea Hawk',7.2,'46'),(2691,'The Searchers',8.1,'86'),(3061,'The Shining',8.5,'155'),(3381,'The Silence Of The Lambs',8.7,'94'),(3101,'The Simpsons',9.0,'112'),(3511,'The Sound Of Music',7.9,'142'),(4461,'The Ten Commandments',7.9,'20'),(2761,'The Terminator',8.1,'72'),(3221,'The Texas Chain Saw Massacre',7.5,'160'),(4441,'The Third Man',8.5,'19'),(2901,'The Tin Man',4.6,'73'),(4231,'The Tonight Show Starring Johnny Carson',8.3,'12'),(3651,'The Treasure Of The Sierra Madre',8.5,'88'),(3001,'The Twilight Zone',9.5,'83'),(4641,'The Wild Bunch',8.1,'146'),(2511,'The Wizard Of Oz',8.3,'163'),(3401,'The X Files',9.0,'101'),(4701,'This Is Spinal Tap',8.0,'139'),(4781,'Three Little Pigs',7.7,'16'),(2871,'Thx 1138',6.8,'52'),(3311,'Titanic',7.4,'72'),(4881,'Toast Of The Town',8.3,'91'),(4241,'Top Gun',6.6,'162'),(2721,'Touch Of Evil',8.3,'125'),(4381,'Triumph Des Willens',7.7,'104'),(3111,'Un Chien Andalou',8.0,'109'),(4341,'Un Dans La Ville',6.7,'35'),(4321,'Underworld',7.7,'95'),(2701,'Vertigo',8.6,'4'),(3541,'West Side Story',7.8,'78'),(4711,'Winchester 73',7.8,'6'),(4251,'You Only Live Twice',6.9,'106');
/*!40000 ALTER TABLE `movies` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `relation`
--

DROP TABLE IF EXISTS `relation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `relation` (
  `movie_id` int(11) NOT NULL,
  `genre_id` int(11) NOT NULL,
  KEY `movie_id_idx` (`movie_id`),
  KEY `genre_id_idx` (`genre_id`),
  CONSTRAINT `genre_id` FOREIGN KEY (`genre_id`) REFERENCES `genres` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `movie_id` FOREIGN KEY (`movie_id`) REFERENCES `movies` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `relation`
--

LOCK TABLES `relation` WRITE;
/*!40000 ALTER TABLE `relation` DISABLE KEYS */;
INSERT INTO `relation` VALUES (2511,3),(2511,10),(2511,11),(2511,17),(2521,1),(2521,3),(2521,11),(2521,22),(2531,3),(2531,9),(2531,27),(2541,15),(2541,18),(2541,26),(2551,3),(2551,11),(2551,15),(2561,3),(2561,9),(2561,22),(2571,3),(2571,22),(2581,9),(2581,21),(2581,27),(2591,4),(2591,10),(2591,11),(2591,17),(2591,21),(2601,3),(2601,18),(2601,22),(2611,7),(2611,9),(2621,9),(2621,14),(2621,21),(2621,27),(2621,28),(2631,7),(2631,12),(2631,18),(2631,26),(2641,26),(2651,11),(2651,21),(2661,9),(2661,27),(2671,9),(2671,21),(2671,27),(2681,17),(2681,6),(2681,21),(2691,3),(2691,9),(2691,28),(2701,7),(2701,18),(2701,21),(2701,26),(2711,1),(2711,3),(2711,26),(2721,7),(2721,12),(2721,26),(2731,3),(2731,8),(2741,15),(2751,9),(2751,18),(2761,1),(2761,22),(2761,26),(2771,9),(2771,15),(2771,18),(2781,9),(2781,14),(2781,27),(2791,1),(2791,3),(2791,22),(2801,3),(2801,11),(2801,15),(2801,22),(2801,26),(2811,7),(2811,9),(2811,22),(2821,9),(2821,15),(2821,22),(2831,4),(2831,6),(2831,10),(2831,11),(2831,16),(2841,9),(2841,27),(2851,1),(2851,3),(2861,15),(2861,18),(2871,9),(2871,18),(2871,22),(2871,26),(2881,3),(2881,9),(2881,10),(2881,11),(2881,22),(2891,6),(2891,9),(2901,23),(2901,3),(2901,6),(2911,9),(2911,26),(2921,3),(2921,28),(2931,23),(2931,1),(2931,28),(2941,6),(2941,17),(2941,21),(2951,7),(2951,9),(2951,21),(2961,6),(2961,21),(2961,27),(2961,1),(2971,3),(2971,11),(2971,18),(2981,1),(2981,3),(2981,21),(2991,10),(2991,11),(2991,3),(2991,6),(3001,9),(3001,11),(3001,18),(3001,22),(3001,26),(3011,23),(3011,28),(3021,1),(3021,3),(3021,26),(3031,6),(3031,9),(3041,3),(3041,15),(3041,22),(3041,26),(3051,11),(3051,15),(3061,15),(3061,18),(3071,6),(3071,9),(3081,7),(3081,9),(3081,26),(3091,9),(3091,21),(3091,24),(3101,4),(3101,6),(3111,23),(3111,11),(3121,11),(3121,15),(3131,1),(3131,3),(3131,9),(3131,26),(3141,4),(3141,10),(3141,6),(3151,1),(3151,3),(3151,6),(3151,7),(3151,10),(3151,11),(3151,18),(3151,22),(3161,3),(3161,27),(3171,7),(3171,9),(3171,12),(3181,3),(3181,10),(3181,22),(3191,3),(3191,9),(3191,26),(3201,18),(3201,21),(3201,26),(3211,6),(3211,23),(3211,10),(3221,15),(3221,18),(3221,26),(3231,3),(3231,9),(3231,27),(3241,9),(3241,11),(3241,21),(3251,9),(3261,1),(3261,7),(3261,26),(3271,9),(3271,10),(3271,17),(3271,21),(3281,4),(3281,10),(3281,17),(3291,15),(3291,21),(3291,26),(3301,6),(3301,9),(3301,24),(3311,9),(3311,14),(3311,21),(3321,1),(3321,3),(3321,9),(3321,14),(3321,21),(3331,7),(3331,9),(3341,7),(3341,18),(3341,21),(3341,26),(3351,1),(3351,22),(3351,26),(3361,9),(3361,18),(3361,21),(3371,9),(3381,7),(3381,26),(3391,6),(3391,10),(3391,9),(3391,21),(3401,9),(3401,18),(3401,22),(3401,26),(3411,1),(3411,22),(3411,26),(3421,25),(3431,6),(3431,9),(3431,21),(3441,6),(3441,23),(3451,1),(3451,3),(3451,22),(3461,6),(3461,10),(3471,3),(3471,5),(3471,9),(3471,14),(3471,27),(3481,15),(3481,18),(3491,6),(3491,9),(3501,3),(3501,9),(3501,18),(3501,21),(3501,26),(3511,5),(3511,9),(3511,10),(3511,17),(3521,6),(3521,10),(3531,4),(3531,9),(3531,10),(3541,7),(3541,9),(3541,17),(3541,21),(3551,9),(3551,21),(3551,27),(3561,15),(3561,26),(3571,6),(3571,10),(3581,21),(3581,15),(3591,9),(3591,22),(3591,26),(3601,6),(3601,10),(3601,11),(3601,17),(3611,1),(3611,3),(3611,11),(3611,22),(3621,9),(3621,22),(3631,3),(3631,9),(3641,15),(3641,22),(3651,3),(3651,9),(3651,28),(3651,1),(3661,9),(3661,7),(3661,12),(3671,9),(3671,14),(3671,27),(3681,23),(3681,9),(3691,23),(3691,9),(3691,27),(3701,9),(3701,15),(3701,22),(3701,26),(3711,1),(3711,3),(3711,5),(3711,9),(3711,14),(3721,4),(3721,23),(3731,7),(3731,12),(3731,18),(3741,3),(3741,18),(3741,22),(3751,3),(3751,9),(3751,21),(3761,1),(3761,9),(3761,14),(3761,27),(3771,11),(3771,15),(3781,1),(3781,3),(3781,6),(3781,22),(3791,9),(3791,10),(3801,18),(3801,26),(3811,9),(3821,17),(3821,21),(3821,28),(3831,23),(3841,1),(3841,3),(3841,10),(3841,22),(3851,1),(3851,9),(3851,21),(3851,28),(3861,7),(3861,9),(3861,27),(3871,6),(3871,10),(3871,16),(3881,9),(3881,16),(3881,21),(3891,6),(3891,21),(3901,9),(3901,11),(3911,3),(3911,9),(3911,22),(3921,7),(3921,26),(3931,3),(3931,9),(3941,15),(3941,26),(3951,9),(3951,21),(3961,1),(3961,3),(3961,10),(3961,22),(3971,6),(3971,10),(3971,16),(3981,4),(3981,9),(3981,10),(3981,11),(3981,16),(3991,23),(4001,4),(4001,10),(4001,18),(4001,6),(4001,3),(4011,4),(4011,9),(4021,6),(4021,16),(4021,21),(4021,24),(4031,9),(4031,28),(4041,9),(4041,10),(4041,24),(4051,13),(4061,6),(4061,10),(4071,5),(4071,7),(4071,9),(4071,21),(4081,9),(4091,6),(4091,16),(4101,28),(4111,9),(4111,21),(4121,4),(4121,3),(4121,9),(4121,10),(4121,17),(4131,4),(4131,10),(4131,6),(4131,23),(4141,8),(4141,19),(4151,9),(4151,21),(4161,1),(4161,7),(4161,26),(4171,7),(4171,12),(4171,18),(4171,21),(4171,26),(4181,7),(4181,9),(4191,15),(4191,22),(4191,26),(4201,9),(4201,18),(4201,21),(4211,9),(4211,26),(4221,15),(4231,6),(4231,16),(4231,25),(4241,1),(4241,9),(4241,21),(4251,1),(4251,3),(4251,22),(4251,26),(4261,1),(4261,3),(4261,21),(4261,26),(4271,3),(4271,28),(4271,10),(4281,2),(4281,6),(4291,9),(4291,18),(4301,1),(4301,7),(4301,9),(4301,26),(4311,28),(4311,3),(4311,9),(4321,7),(4321,9),(4331,28),(4341,9),(4341,26),(4351,4),(4351,10),(4351,11),(4351,17),(4351,21),(4361,1),(4361,3),(4361,11),(4361,21),(4371,9),(4371,28),(4381,8),(4381,27),(4391,9),(4401,17),(4401,21),(4411,9),(4411,14),(4411,21),(4421,7),(4421,18),(4421,26),(4431,9),(4431,21),(4441,12),(4441,18),(4441,26),(4451,3),(4451,6),(4451,10),(4451,21),(4451,28),(4461,3),(4461,9),(4461,14),(4471,9),(4471,28),(4481,9),(4481,12),(4491,15),(4491,18),(4491,26),(4501,3),(4501,9),(4501,14),(4501,27),(4511,7),(4511,9),(4511,21),(4511,26),(4521,6),(4521,9),(4521,21),(4521,24),(4531,9),(4531,7),(4531,12),(4541,3),(4541,22),(4551,3),(4551,7),(4551,9),(4551,28),(4561,6),(4561,10),(4571,1),(4571,6),(4571,16),(4571,17),(4581,9),(4581,21),(4591,6),(4601,13),(4601,16),(4601,20),(4611,9),(4611,18),(4611,26),(4621,15),(4621,22),(4631,9),(4631,18),(4631,26),(4641,1),(4641,28),(4651,1),(4651,3),(4651,11),(4661,3),(4661,9),(4661,14),(4671,9),(4671,21),(4681,9),(4681,27),(4691,1),(4691,3),(4691,9),(4691,21),(4691,27),(4701,6),(4701,16),(4711,28),(4721,1),(4721,3),(4721,22),(4731,7),(4731,9),(4731,18),(4741,9),(4741,23),(4751,9),(4751,1),(4751,3),(4761,4),(4761,1),(4761,3),(4761,6),(4761,7),(4761,11),(4761,15),(4761,22),(4771,9),(4771,22),(4771,26),(4781,4),(4781,17),(4781,10),(4781,6),(4781,23),(4791,1),(4791,7),(4791,9),(4801,6),(4801,17),(4811,9),(4821,9),(4821,21),(4831,9),(4831,11),(4841,1),(4841,15),(4851,1),(4851,6),(4851,9),(4851,21),(4851,27),(4851,28),(4861,9),(4861,26),(4871,15),(4871,22),(4881,6),(4881,16),(4891,1),(4891,7),(4891,26),(4901,4),(4901,3),(4901,10),(4901,11),(4901,16),(4911,1),(4911,7),(4911,9),(4911,26),(4921,1),(4921,3),(4921,11),(4921,22),(4931,7),(4931,9),(4931,26),(4941,9),(4941,14),(4951,7),(4951,9),(4951,18),(4961,1),(4961,3),(4961,7),(4961,9),(4961,18),(4971,11),(4971,17);
/*!40000 ALTER TABLE `relation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'heroku_fe87f700b25b4a0'
--

--
-- Dumping routines for database 'heroku_fe87f700b25b4a0'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-11-03 21:33:49
