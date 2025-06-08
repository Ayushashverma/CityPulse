/*
SQLyog Ultimate v8.82 
MySQL - 5.1.45-community : Database - smartcity
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`smartcity` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `smartcity`;

/*Table structure for table `atm` */

DROP TABLE IF EXISTS `atm`;

CREATE TABLE `atm` (
  `sno` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(45) NOT NULL,
  `location` varchar(45) NOT NULL,
  PRIMARY KEY (`sno`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

/*Data for the table `atm` */

insert  into `atm`(`sno`,`name`,`location`) values (1,'SBI','VIKAS NAGAR'),(2,'BANK OF INDIA ','GOMTI NAGAR'),(3,'SBI','IET'),(4,'IOB','teri puliya'),(5,'SBI','TEDHI PULIA'),(6,'SBI','Jankipuram'),(7,'SBI','Bangalore');

/*Table structure for table `coachingcenter` */

DROP TABLE IF EXISTS `coachingcenter`;

CREATE TABLE `coachingcenter` (
  `sno` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(45) NOT NULL,
  `location` varchar(45) NOT NULL,
  `website` varchar(200) NOT NULL,
  PRIMARY KEY (`sno`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

/*Data for the table `coachingcenter` */

insert  into `coachingcenter`(`sno`,`name`,`location`,`website`) values (4,'SARTHAK IAS COACHING','jankipuram','http://www.sarthakias.com'),(5,'T.I.M.E. COACHING ','KAPOORTHALA','http://www.time4education.com'),(6,'CAREER LAUNCHER','HAZRATGANJ','http://www.careerlauncher.com'),(7,'PRAG INDUSTRIES','TALKATORA INDUSTRIAL ESTATE','http://www.praggroup.com');

/*Table structure for table `college` */

DROP TABLE IF EXISTS `college`;

CREATE TABLE `college` (
  `sno` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(45) NOT NULL,
  `location` varchar(45) NOT NULL,
  `website` varchar(200) NOT NULL,
  PRIMARY KEY (`sno`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

/*Data for the table `college` */

insert  into `college`(`sno`,`name`,`location`,`website`) values (2,'Integral University','Dasauli, P.O.. Bas-ha Kursi Road','http://iul.ac.in'),(3,'Dr. A.P.J. Abdul Kalam Technical University','IET Campus, Sitapur Road','https://aktu.ac.in'),(4,'University of Lucknow','University Road, Babuganj, Hasanganj','http://www.lkouniv.ac.in'),(5,'Indian Institute of Management Lucknow','Prabandh Nagar, IIM Road','http://www.iiml.ac.in'),(6,'SGPGI','Rae Bareli Road','http://www.sgpgi.ac.in');

/*Table structure for table `hospitals` */

DROP TABLE IF EXISTS `hospitals`;

CREATE TABLE `hospitals` (
  `sno` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(45) NOT NULL,
  `location` varchar(45) NOT NULL,
  `website` varchar(200) NOT NULL,
  PRIMARY KEY (`sno`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=latin1;

/*Data for the table `hospitals` */

insert  into `hospitals`(`sno`,`name`,`location`,`website`) values (2,'ICON HOSPITAL','JANKIPURAM','http://www.neurosurgeondrdkvatsal.com'),(3,'SAHARA HOSPITAL','GOMTI NAGAR','http://www.saharahospitals.com'),(4,'SHEKHAR HOSPITAL','INDIRA NAGAR','http://www.shekharhospital.com'),(5,'FATIMA HOSPITAL','MAHANAGAR','http://fatimahospitallucknow.com'),(6,'MAYO MEDICAL CENTRE','GOMTI NAGAR','https://www.mimsup.org'),(7,'K.K . HOSPITAL','RIVER BANK COLONY','http://kkhospitallucknow.com'),(8,'NISHAT HOSPITAL','LALBAGH','http://www.nishathospital.com'),(9,'VIVEKANANDA HOSPITAL','NIRALA NAGAR','http://www.ramakrishnalucknow.org'),(10,'LUCKNOW METRO HOSPITAL','GOMTI NAGAR','http://lucknowmetrohospital.com'),(11,'AVADH HOSPITAL','SINGAR NAGAR','http://www.avadhhospital.com');

/*Table structure for table `hotel` */

DROP TABLE IF EXISTS `hotel`;

CREATE TABLE `hotel` (
  `sno` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(45) NOT NULL,
  `location` varchar(45) NOT NULL,
  `website` varchar(200) NOT NULL,
  PRIMARY KEY (`sno`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=latin1;

/*Data for the table `hotel` */

insert  into `hotel`(`sno`,`name`,`location`,`website`) values (7,'GOLDEN TULIP HOTEL','HUSAINGANJ','http://www.goldentuliplucknow.com'),(8,'MOHAN HOTEL','CHARBAGH','http://www.hotelmohan.com'),(9,'THE PICCADILY','BARA BIRWA','http://www.piccadilylucknow.co.in'),(10,'HOTEL CLARKS AWADH','HAZRATGANJ','http://www.clarksavadh.com'),(11,'HOTEL GOLDEN ORCHID','NIRALA NAGAR','http://goldenorchidhotel.com'),(12,'THE GRAND JBR','GOMTI NAGAR','http://thegrandjbr.com/newonline/'),(13,'Taj Hotel','Ahemdabad','www.taj.com');

/*Table structure for table `industries` */

DROP TABLE IF EXISTS `industries`;

CREATE TABLE `industries` (
  `sno` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(45) NOT NULL,
  `location` varchar(45) NOT NULL,
  `website` varchar(200) NOT NULL,
  PRIMARY KEY (`sno`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

/*Data for the table `industries` */

insert  into `industries`(`sno`,`name`,`location`,`website`) values (3,'PUSHKER PAINTS INDUSTRIES','MAHANAGAR','http://pushkerpaints.tripod.com'),(4,'PTC INDUSTRIES LTD','AISHBAGH','http://ptcil.com'),(5,'B.R. INDUSTRIES','SNEH NAGAR','https://www.indiamart.com/br-industries-lucknow/'),(6,'INDIAN INDUSTRIES ASSOCIATION','GOMTI NAGAR','http://www.iiaonline.in'),(7,'SINGH & SONS INDUSTRIES','CHINHAT','http://www.ssiautoparts.com');

/*Table structure for table `jobs` */

DROP TABLE IF EXISTS `jobs`;

CREATE TABLE `jobs` (
  `sno` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(45) NOT NULL,
  `domain` varchar(45) NOT NULL,
  `website` varchar(200) NOT NULL,
  PRIMARY KEY (`sno`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;

/*Data for the table `jobs` */

insert  into `jobs`(`sno`,`name`,`domain`,`website`) values (3,'King Georges Medical University','Female Counselor','https://www.freshersworld.com/jobs/female-counselor-jobs-in-lucknow-king-georges-medical-university-284860'),(4,'Get Joy Club Pvt.Ltd ','Marketing Executive','https://www.freshersworld.com/jobs/marketing-executive-jobs-in-kanpur-lucknow-get-joy-club-pvt-ltd-284462'),(5,'Platinum fitness ','Fitness trainer','https://www.freshersworld.com/jobs/fitness-trainer-jobs-in-lucknow-platinum-fitness-284547'),(6,'Get Joy Club Pvt.Ltd ','Sales Executive','https://www.freshersworld.com/jobs/sales-executive-jobs-in-lucknow-get-joy-club-pvt-ltd-284456'),(7,'Grandiose entertainment ','Sales Man','https://www.freshersworld.com/jobs/sales-man-jobs-in-lucknow-grandiose-etertainment-284091'),(8,'BANK OF INDIA ','Faculty','https://www.freshersworld.com/jobs/faculty-jobs-in-lucknow-bank-of-india-283840');

/*Table structure for table `library` */

DROP TABLE IF EXISTS `library`;

CREATE TABLE `library` (
  `sno` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(45) NOT NULL,
  `location` varchar(45) NOT NULL,
  `website` varchar(200) NOT NULL,
  PRIMARY KEY (`sno`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

/*Data for the table `library` */

insert  into `library`(`sno`,`name`,`location`,`website`) values (1,'Amir-ud-Daula Public Library','Kaiserbaagh','http://amirplibrary.org'),(2,'Gautam Buddha Central Library BBAU','Raebareli Road','http://www.bbau.ac.in/new/index.aspx'),(3,'Central Library, Amity University','GOMTI NAGAR','http://www.amity.edu/infra-library.aspx');

/*Table structure for table `login` */

DROP TABLE IF EXISTS `login`;

CREATE TABLE `login` (
  `userid` varchar(45) NOT NULL,
  `userpass` varchar(45) NOT NULL,
  `usertype` varchar(45) NOT NULL,
  PRIMARY KEY (`userid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `login` */

insert  into `login`(`userid`,`userpass`,`usertype`) values ('admin','123','admin'),('business','123','business'),('jobseeker','123','jobseeker'),('student','123','student'),('tourist','123','tourist');

/*Table structure for table `theaters` */

DROP TABLE IF EXISTS `theaters`;

CREATE TABLE `theaters` (
  `sno` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(45) NOT NULL,
  `location` varchar(45) NOT NULL,
  `website` varchar(200) NOT NULL,
  PRIMARY KEY (`sno`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

/*Data for the table `theaters` */

insert  into `theaters`(`sno`,`name`,`location`,`website`) values (1,'Wave Cinemas','GOMTI NAGAR','https://wavecinemas.com'),(2,'Pratibha Theatre','Sameer Graphics Marg, Opp China Market,','http://www.pratibhacinema.com/default.aspx'),(3,'Novelty Talkies','Aliganj','http://www.noveltytalkies.com'),(4,'SRS Cinemas ','GOMTI NAGAR','http://www.srscinemas.net');

/*Table structure for table `travelagency` */

DROP TABLE IF EXISTS `travelagency`;

CREATE TABLE `travelagency` (
  `sno` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(45) NOT NULL,
  `location` varchar(45) NOT NULL,
  `website` varchar(200) NOT NULL,
  PRIMARY KEY (`sno`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

/*Data for the table `travelagency` */

insert  into `travelagency`(`sno`,`name`,`location`,`website`) values (2,'Woodpecker Travel & Tours Pvt Ltd','HAZRATGANJ','http://www.woodpeckertravels.com'),(4,'Mirza Tour And Travels',' Avadh Point, Nakkhas Crossing','http://mirzatourandtravel.tripod.com/id9.html');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
