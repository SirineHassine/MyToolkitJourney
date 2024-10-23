#!/bin/bash

# Update packages
sudo apt update

# Install Java (OpenJDK 11)
sudo apt install default-jdk -y

# Create a user and group for Tomcat
sudo groupadd tomcat
sudo useradd -s /bin/false -g tomcat -d /opt/tomcat tomcat

# Download and install Tomcat
cd /tmp
wget https://dlcdn.apache.org/tomcat/tomcat-9/v9.0.96/bin/apache-tomcat-9.0.96.tar.gz
sudo mkdir /opt/tomcat
sudo tar xf apache-tomcat-9.0.96.tar.gz  -C /opt/tomcat --strip-components=1

# Set permissions
sudo chown -R tomcat:tomcat /opt/tomcat
sudo chmod -R 755 /opt/tomcat

# Create a systemd service for Tomcat
sudo tee /etc/systemd/system/tomcat.service > /dev/null <<EOF
[Unit]
Description=Apache Tomcat Web Application Container
After=network.target

[Service]
Type=forking
User=tomcat
Group=tomcat
Environment=JAVA_HOME=/usr/lib/jvm/java-11-openjdk-amd64
Environment=CATALINA_HOME=/opt/tomcat
ExecStart=/opt/tomcat/bin/startup.sh
ExecStop=/opt/tomcat/bin/shutdown.sh
Restart=on-failure

[Install]
WantedBy=multi-user.target
EOF

# Reload systemd, start, and enable Tomcat
sudo systemctl daemon-reload
sudo systemctl start tomcat
sudo systemctl enable tomcat

# Create a test index.html file
echo "<html><body><h1>Tomcat is running on Ubuntu manual!</h1></body></html>" | sudo tee /opt/tomcat/webapps/ROOT/index.html

# Check that Tomcat is active
sudo systemctl status tomcat
