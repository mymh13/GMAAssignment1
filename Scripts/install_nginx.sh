#!/bin/bash
set -e  # Stop the script if any command fails

echo "Updating package lists..."
sudo apt-get update -y

echo "Installing Nginx..."
sudo apt-get install nginx -y

echo "Starting and enabling Nginx..."
sudo systemctl start nginx
sudo systemctl enable nginx

echo "Nginx installation complete."