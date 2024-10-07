#!/bin/bash

# Update the package index
sudo apt-get update -y

# Install Nginx
sudo apt-get install nginx -y

# Start Nginx service
sudo systemctl start nginx

# Enable Nginx to start on boot
sudo systemctl enable nginx

# Optional: Configure firewall to allow HTTP and HTTPS traffic
sudo ufw allow 'Nginx Full'

# Optional: Create a simple index.html file
echo "<html><h1>Hello from Nginx on EC2!</h1></html>" | sudo tee /var/www/html/index.html

# Optional: Restart Nginx to apply any changes
sudo systemctl restart nginx

