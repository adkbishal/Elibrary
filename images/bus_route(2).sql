

DROP TABLE IF EXISTS `ADMIN`;
CREATE TABLE `ADMIN` (
  `staff_id` varchar(30) NOT NULL,
  `name` varchar(30) NOT NULL,
  `address` varchar(30) NOT NULL,
  `phone_no` varchar(30) NOT NULL,
  `email` varchar(30) NOT NULL,
  `latitude` varchar(30) DEFAULT NULL,
  `longitude` varchar(30) DEFAULT NULL,
  `user_type` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`staff_id`)
) ;

INSERT INTO `ADMIN` (`staff_id`, `name`, `address`, `phone_no`, `email`, `latitude`, `longitude`, `user_type`) VALUES
('210234',	'Pranaya Nakarmi',	'Lagankhel',	'9847758332',	'pranaya@achsnepal.edu.np',	NULL,	NULL,	'admin');

DROP TABLE IF EXISTS `DRIVER`;
CREATE TABLE `DRIVER` (
  `bus_id` int NOT NULL,
  `bus_driver_name` varchar(30) NOT NULL,
  `bus_no` varchar(30) NOT NULL,
  `phone_no` varchar(30) NOT NULL,
  PRIMARY KEY (`bus_id`)
);


DROP TABLE IF EXISTS `LOCATIONS`;
CREATE TABLE `LOCATIONS` (
  `location_id` int NOT NULL,
  `location_name` varchar(255) NOT NULL,
  `route_id` int NOT NULL,
  PRIMARY KEY (`location_id`),
  -- KEY `route_id` (`route_id`),
  -- CONSTRAINT `LOCATIONS_ibfk_1` 
  FOREIGN KEY (`route_id`) REFERENCES `ROUTES` (`route_id`)
) ;

INSERT INTO `LOCATIONS` (`location_id`, `location_name`, `route_id`) VALUES
(1,	'Kalanki',	1),
(2,	'Baneshwor',	1),
(3,	'Lainchaur',	1),
(4,	'Chabahil',	2),
(5,	'Putalisadak',	2),
(6,	'Thamel',	3),
(7,	'Nayabazar',	3);

DROP TABLE IF EXISTS `ROUTES`;
CREATE TABLE `ROUTES` (
  `route_id` int NOT NULL,
  `route_name` varchar(255) DEFAULT NULL,
  `bus_id` int DEFAULT NULL,
  PRIMARY KEY (`route_id`),
  -- KEY `fk_bus_id` (`bus_id`),
  FOREIGN KEY (`bus_id`) REFERENCES `bus` (`bus_id`)
) ;

INSERT INTO `ROUTES` (`route_id`, `route_name`, `bus_id`) VALUES
(1,	'Route_A',	1),
(2,	'Route_B',	2),
(3,	'Route_C',	3);

DROP TABLE IF EXISTS `STUDENT`;
CREATE TABLE `STUDENT` (
  `roll_id` varchar(20) NOT NULL,
  `name` varchar(30) NOT NULL,
  `parents_name` varchar(30) DEFAULT NULL,
  `phone_no` varchar(30) NOT NULL,
  `relationship` varchar(30) DEFAULT NULL,
  `email` varchar(200) DEFAULT NULL,
  `address` varchar(50) NOT NULL,
  `parent_no` varchar(50) DEFAULT NULL,
  `latitude` varchar(100) DEFAULT NULL,
  `longitude` varchar(100) DEFAULT NULL,
  `bus` varchar(20) DEFAULT NULL,
  `user_type` varchar(20) DEFAULT NULL,
  `location_id` int DEFAULT NULL,
  PRIMARY KEY (`roll_id`),
  FOREIGN KEY (`location_id`) REFERENCES `LOCATIONS` (`location_id`)
) ;

INSERT INTO `STUDENT` (`roll_id`, `name`, `parents_name`, `phone_no`, `relationship`, `email`, `address`, `parent_no`, `latitude`, `longitude`, `bus`, `user_type`, `location_id`) VALUES
('210525',	'Hari Shrestha',	'Sita Shrestha',	'9823822905',	'Mother',	'hari@gmail.com',	'Nayabazar',	'9823822905',	NULL,	NULL,	'3',	'student',	7),
('210616',	'bibek',	'Manju Basnet',	'9847758379',	'Mother',	'bbkbsnyt@gmail.com',	'lainchaur',	'9847758379',	NULL,	NULL,	'1',	'admin',	3),
('210622',	'Bishal',	'Manju Basnet',	'9847758379',	'Mother',	'bishal@gmail.com',	'kalanki',	'9846658391',	NULL,	NULL,	'1',	'student',	1),
('210623',	'Anup Kumal',	'Sita Kumal',	'9847758376',	'Mother',	'anup@gmail.com',	'Baneshwor',	'9847758376',	NULL,	NULL,	'1',	'student',	2),
('210632',	'Bijay Khadka',	'Nanu Khadka',	'986657432',	'Mother',	'bijay@gmail.coom',	'lainchaur',	'986657432',	NULL,	NULL,	'1',	'student ',	3);

DROP TABLE IF EXISTS `bus`;
CREATE TABLE `bus` (
  `bus_id` int NOT NULL AUTO_INCREMENT,
  `bus_num` int NOT NULL,
  `driver_name` varchar(50) NOT NULL,
  PRIMARY KEY (`bus_id`)
) ;

INSERT INTO `bus` (`bus_id`, `bus_num`, `driver_name`) VALUES
(1,	1,	'John Smith'),
(2,	2,	'Jane Doe'),
(3,	3,	'Bob Johnson');


