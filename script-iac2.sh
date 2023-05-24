#!/bin/bash

echo "Iniciando atualização do sistema..."

apt-get update
apt-get upgrade -y

echo "Iniciando instalação apache e unzip..."

apt-get install apache2 -y
apt-get install unzip -y

echo "Descompactando e criando site..."

cd /tmp
wget https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip
unzip main.zip
cd linux-site-dio-main
cp -R * /var/www/html/
