#!/bin/bash

apt-get update -y
apt-get upgrade -y
apt-get install -y vim git openjdk-7-jdk-headless dos2unix

# cp /vagrant/inputrc /etc/inputrc

cd /usr/local
wget http://apache.mirror.digionline.de/tomcat/tomcat-8/v8.5.49/bin/apache-tomcat-8.5.49.tar.gz

tar -xzvf apache-tomcat-8.5.49.tar.gz

ln -s apache-tomcat-8.5.49 tomcat

dos2unix /vagrant/tomcat8
cp /vagrant/tomcat8 /etc/init.d/tomcat8
chmod 755 /etc/init.d/tomcat8
update-rc.d tomcat8 defaults
service tomcat8 start