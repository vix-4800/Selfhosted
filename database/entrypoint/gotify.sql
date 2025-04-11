CREATE DATABASE IF NOT EXISTS `gotify`;

CREATE USER 'gotify'@'%' IDENTIFIED BY 'gotify';
GRANT ALL PRIVILEGES ON `gotify`.* TO 'gotify'@'%';