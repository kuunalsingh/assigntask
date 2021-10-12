#!/bin/bash
apt-get update -y
sudo apt-get install apache2 -y
sudo systemctl enable apache2.service
sudo systemctl start apache2.service
