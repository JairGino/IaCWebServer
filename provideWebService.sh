#!/bin/bash
# Execute as root!

echo "Update && update sistem..."
apt-get update && apt upgrade -y
apt-get install unzip apache2 -y

echo "Downloading && copying application..."
wget -P /tmp https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip

#unzip -j /tmp/main.zip -d /var/www/html/
unzip /tmp/main.zip -d /tmp/
cd /tmp/linux-site-dio-main
cp -R * /var/www/html/
