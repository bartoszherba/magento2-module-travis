#!/usr/bin/env bash
#### Creates database

DB=${1:-"magento2"}

echo Creating database...

mysql -e "CREATE DATABASE IF NOT EXISTS ${DB};"
mysql -e "GRANT ALL PRIVILEGES ON ${DB}.* TO '${DB_USER}'@'${DB_HOST}' IDENTIFIED BY '${DB_PASSWORD}';"
mysql -e 'FLUSH PRIVILEGES;'