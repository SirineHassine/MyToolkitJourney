#!/bin/bash

# Update packages
sudo apt update
sudo apt upgrade -y

# Install Java ands Tomcat
sudo apt install openjdk-11-jdk -y
sudo apt install tomcat9 tomcat9-admin tomcat9-docs tomcat9-common git -y


# start and enable Tomcat at restart
sudo systemctl start tomcat9
sudo systemctl enable tomcat9

# Créer un fichier index.html pour tester
echo "<html><body><h1>Tomcat fonctionne via apt sur Ubuntu APT !</h1></body></html>" | sudo tee /var/lib/tomcat9/webapps/ROOT/index.html

# Verify  Tomcat is active
sudo systemctl status tomcat9
