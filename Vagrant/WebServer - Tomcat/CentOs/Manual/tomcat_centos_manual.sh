#!/bin/bash

# Update packages
sudo yum update -y

# Install Java (OpenJDK 11)
sudo yum install java-11-openjdk-devel -y

# Create a user and group for Tomcat
sudo groupadd -f tomcat
sudo useradd -s /bin/nologin -g tomcat -d /opt/tomcat tomcat
useradd --shell /sbin/nologin tomcat

# Download and install Tomcat

cd /tmp
wget https://dlcdn.apache.org/tomcat/tomcat-9/v9.0.96/bin/apache-tomcat-9.0.96.tar.gz

# Check if the /opt/tomcat directory already exists
if [ ! -d "/opt/tomcat" ]; then
  sudo mkdir /opt/tomcat
fi

# Extract Tomcat into /opt/tomcat
sudo tar xf apache-tomcat-9.0.96.tar.gz -C /opt/tomcat --strip-components=1

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
Environment=JAVA_HOME=/usr/lib/jvm/jre
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
echo "<html><body><h1>Tomcat is running on CentOS Manual!</h1></body></html>" | sudo tee /opt/tomcat/webapps/ROOT/index.html

# Check that Tomcat is active
sudo systemctl status tomcat
