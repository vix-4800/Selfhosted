CREATE DATABASE IF NOT EXISTS `photoprism`;

CREATE USER 'photoprism'@'%' IDENTIFIED BY 'photoprism';
GRANT ALL PRIVILEGES ON `photoprism`.* TO 'photoprism'@'%';