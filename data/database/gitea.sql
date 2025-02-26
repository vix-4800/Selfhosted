CREATE DATABASE IF NOT EXISTS `gitea`;

CREATE USER 'gitea'@'localhost' IDENTIFIED BY 'gitea';
GRANT ALL PRIVILEGES ON `gitea`.* TO 'gitea'@'localhost';