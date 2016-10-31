#!/usr/bin/env bash

echo "Setting up victims DB..."

mysql -u root -e 'CREATE DATABASE IF NOT EXISTS victims;'
mysql -u root -e "SHOW DATABASES LIKE 'victims'";
mysql -u root -e "CREATE USER 'victims'@'localhost' IDENTIFIED BY 'victims';"
mysql -u root -e "GRANT ALL PRIVILEGES ON * . * TO 'victims'@'localhost';"
mysql -u root -e "FLUSH PRIVILEGES;"
