CREATE DATABASE IF NOT EXISTS `photoprism`;

CREATE USER 'photoprism'@'localhost' IDENTIFIED BY 'photoprism';
GRANT ALL PRIVILEGES ON `photoprism`.* TO 'photoprism'@'localhost';