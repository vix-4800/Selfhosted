CREATE DATABASE IF NOT EXISTS `nextcloud`;

CREATE USER 'nextcloud'@'%' IDENTIFIED BY 'nextcloud';
GRANT ALL PRIVILEGES ON `nextcloud`.* TO 'nextcloud'@'%';