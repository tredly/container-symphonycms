# SymphonyCMS 2.6 Container for Tredly

Version 1.0.0 Apr 21 2016

This container is an all-in-one FAMP (FreeBSD, Apache, MySQL, PHP) stack running SymphonyCMS. It relies in the Tredly FreeBSD containers platform. You can find out more information about Tredly at **[http://tredly.com](http://tredly.com)**

## Installation

Requires Tredly 0.9.0 [https://github.com/vuid-com/tredly-host]

1. Modify `mariadb/grant.cnf`
2. Change the mysql user password from `super_secret_password` to something more secure. Note that this container does not allow outside connections to MySQL, however it is good practise to use a secure password. There are 2 places this needs to be changed; lines #2 and #3.
3. Optionally change the database name `container_symphony2` on line 1
4. Change the `URL` settings in your `Tredlyfile` to match the actual URL of your server. If you are running this locally, add `symphonycms.tredly` and `www.symphonycms.tredly` to your `/etc/hosts` file.


### Changing the container name

By default, the container name is `container-symphony2`. Change this by editing `containerName` in the `Tredlyfile` prior to building this container.

## Usage

Go to the URL specified in your Tredlyfile, e.g. `symphonycms.tredly`. You should be presented with the Symphony installer. Use the database information you specified earlier to complete installation. Be default it is:

* Host: **localhost**
* User: **root**
* Password: **super\_secret\_password**
* Port: **3306**
* Database: **container_symphony2**

## More Information

Visit the offical Symphony CMS website for information on how to use Symphony **[http://www.getsymphony.com/learn/tutorials/beginners/](http://www.getsymphony.com/learn/tutorials/beginners/)**
