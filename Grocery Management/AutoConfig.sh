sudo apt update
sudo apt install mariadb-server
sudo apt -y install php7.4
sudo apt install php-mysqli
sudo mysql_secure_installation
sudo systemctl start mariadb
sudo mysql -u root -p 989878
sudo mysql -e "create database GROCERY"
