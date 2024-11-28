#!/bin/bash

# Update packages
sudo apt update
sudo apt upgrade -y

# Install Java ands Tomcat
sudo apt install openjdk-11-jdk -y

sudo apt install tomcat10 tomcat10-admin tomcat10-docs tomcat10-common git -y


# start and enable Tomcat at restart
sudo systemctl start tomcat10
sudo systemctl enable tomcat10

# Créer un fichier index.html pour tester
echo "<html><body><h1>Tomcat fonctionne via apt sur Ubuntu APT !</h1></body></html>" | sudo tee /var/lib/tomcat10/webapps/ROOT/index.html

# Verify  Tomcat is active
sudo systemctl status tomcat10

