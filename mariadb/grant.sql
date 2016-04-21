CREATE DATABASE IF NOT EXISTS container_symphony2 CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;
UPDATE mysql.user SET Password = PASSWORD('super_secret_password') WHERE User = 'root';
grant all privileges on *.* to 'root'@'%' identified by 'super_secret_password' with grant option;
FLUSH PRIVILEGES;
