

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
);

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
  PRIMARY KEY (`roll_id`)
);

INSERT INTO `STUDENT` (`roll_id`, `name`, `parents_name`, `phone_no`, `relationship`, `email`, `address`, `parent_no`, `latitude`, `longitude`, `bus`, `user_type`) VALUES
('210525',	'Hari Shrestha',	'Sita Shrestha',	'9823822905',	'Mother',	'hari@gmail.com',	'Nayabazar',	'9823822905',	NULL,	NULL,	NULL,	'student'),
('210616',	'bibek',	'Manju Basnet',	'9847758379',	'Mother',	'bbkbsnyt@gmail.com',	'lainchaur',	'9847758379',	NULL,	NULL,	NULL,	'admin'),
('210622',	'Bishal',	'Manju Basnet',	'9847758379',	'Mother',	'bishal@gmail.com',	'kalanki',	'9846658391',	NULL,	NULL,	NULL,	'student'),
('210623',	'Anup Kumal',	'Sita Kumal',	'9847758376',	'Mother',	'anup@gmail.com',	'baneshowr',	'9847758376',	NULL,	NULL,	NULL,	'student');

-- 2023-05-09 15:30:39
