CREATE DATABASE IF NOT EXISTS `nginx-proxy-manager`;

CREATE USER 'nginx-proxy-manager'@'%' IDENTIFIED BY 'nginx-proxy-manager';
GRANT ALL PRIVILEGES ON `nginx-proxy-manager`.* TO 'nginx-proxy-manager'@'%';