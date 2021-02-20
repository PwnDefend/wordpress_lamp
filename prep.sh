sudo apt update -y && sudo apt upgrade -y
sudo apt install apache2 -y
sudo ufw app list
sudo ufw app info "Apache Full"
sudo ufw allow in "Apache Full"
sudo apt install mysql-server -y
sudo apt install php libapache2-mod-php php-mysql -y
sudo systemctl restart apache2
#change the password obvs
mysqladmin -u root password "Pa55w0rd123!"
sudo mysql_secure_installation -y

#cover your tracks
history -c

sudo apt update -y 
sudo apt install php-curl php-gd php-mbstring php-xml php-xmlrpc php-soap php-intl php-zip -y

#bad install don't do it this way
cd /tmp
curl -O https://wordpress.org/latest.tar.gz
tar xzvf latest.tar.gz
sudo cp -a /tmp/wordpress/. /var/www/html

cd /var/www/html
rm index.html
sudo chgrp -R www-data /var/www/html/
mysql
CREATE DATABASE wordpress DEFAULT CHARACTER SET utf8 COLLATE utf8_unicode_ci;
CREATE USER 'wordpressuser'@'localhost' IDENTIFIED BY 'Pa55w0rd123456701!';

GRANT ALL ON wordpress.* TO 'wordpressuser'@'localhost';
FLUSH PRIVILEGES;
EXIT;

chown -Rf www-data.www-data /var/www/html/

