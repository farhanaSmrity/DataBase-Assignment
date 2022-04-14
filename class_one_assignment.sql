
CREATE DATABASE `class_one_assignment`;

USE `class_one_assignment`;



CREATE TABLE `customers` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `First_Name` varchar(50) NOT NULL,
  `Last_Name` varchar(50) NOT NULL,
  `Date_of_Birth` date DEFAULT NULL,
  `Phone` varchar(200) DEFAULT NULL,
  `Address` varchar(200) NOT NULL,
  `City` varchar(20) NOT NULL,
  `state` varchar(15) NOT NULL,
  `points` int(11) NOT NULL,
  PRIMARY KEY (`id`)
);


insert  into `customers`(`id`,`First_Name`,`Last_Name`,`Date_of_Birth`,`Phone`,`Address`,`City`,`state`,`points`) values 
(1,'Babara','MacCaffrey','1986-03-28','781-932-9754','0 Sage Terrace','Waltham','MA',2273),
(2,'Ines','Brushfield','1986-04-13','804-427-9456','14187 Commercial Trail','Hampton','VA',947),
(3,'Freddi','Boagey','1985-02-07','719-724-7869','251 Springs Junction','Colorado Springs','CO',2967),
(4,'Ambur','Roseburgh','1974-04-14','407-231-8017','30 Arapahoe Terrace','Orlando','FL',457),
(5,'Clemmie','Betchley','1973-11-07',NULL,'5 Spohn Circle','Arlington','TX',3675);

SELECT * FROM customers;

4.
SELECT id,First_Name,points FROM customers ORDER BY points DESC LIMIT 2;

5.
SELECT id,First_Name,Date_of_Birth,points FROM customers WHERE YEAR(Date_of_Birth) BETWEEN 1980 AND 1990 OR points <= 1000;


6.
SELECT id,First_Name,points FROM customers ORDER BY points ASC;

SELECT id,First_Name,points FROM customers ORDER BY points DESC;

7.
SELECT id,First_Name,Last_Name FROM customers WHERE First_Name LIKE '%burgh%' OR Last_Name LIKE '%burgh%';

SELECT id,First_Name,Last_Name FROM customers WHERE First_Name REGEXP 'burgh' OR Last_Name REGEXP 'burgh';

8.
SELECT id,First_Name,Last_Name,Phone FROM customers WHERE Phone IS NULL;

9.
ALTER TABLE customers CHANGE Date_of_Birth dob DATE;

10.
SELECT id,First_Name,Last_Name,MAX(points) FROM customers;

11.
SELECT id,First_Name,Last_Name,points,
CASE
WHEN points<= 1000 THEN 'They are bronze members.'
WHEN points> 1000 AND points<= 2000 THEN 'They are silver members.'
WHEN points>=2000 AND points<3000 THEN 'They are gold members.'
ELSE 'They are platinum members.'
END AS 'Membership' FROM customers;

