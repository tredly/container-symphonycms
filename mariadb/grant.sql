CREATE DATABASE IF NOT EXISTS container_symphony2;
UPDATE mysql.user SET Password = PASSWORD('super_secret_password') WHERE User = 'root';
grant all privileges on *.* to 'root'@'%' identified by 'super_secret_password' with grant option;
FLUSH PRIVILEGES;
