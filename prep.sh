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

