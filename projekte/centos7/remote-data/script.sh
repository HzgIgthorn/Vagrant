#/bin/bash

DATE=$(date +%Y-%m-%d_%H:%M)
DB_HOST=$1
DB_PASSWORD=$2
DB_NAME=$3

mysqldump -u root -h $DB_HOST -p$DB_PASSWORD $DB_NAME > /tmp/db$DATE.sql