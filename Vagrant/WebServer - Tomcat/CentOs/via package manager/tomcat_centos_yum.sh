#!/bin/bash

# Update packages
sudo yum update -y

# Install Java and Tomcat
sudo yum install java-11-openjdk tomcat tomcat-webapps tomcat-admin-webapps -y

# start and enable Tomcat at restart
sudo systemctl start tomcat
sudo systemctl enable tomcat

# Create a test index.html file
echo "<html><body><h1>Tomcat fonctionne via yum sur CentOS Yum !</h1></body></html>" | sudo tee /usr/share/tomcat/webapps/ROOT/index.html

# Verify  Tomcat is active
sudo systemctl status tomcat