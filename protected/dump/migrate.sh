#!/bin/bash

dbname="vmn"

echo "Please enter database username:"
read dbuser
echo "Please enter password for database username:"
read password

mysql -u $dbuser --password=$password --database=$dbname < $(dirname $0)/vmn.sql
echo "Database migration was complete"
