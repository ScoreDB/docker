#!/bin/bash
# 
# Please only run this script at server initialization.
# Do not run in production.

docker-compose -p scoredb up -d
docker-compose -p scoredb exec server php artisan migrate --force
docker-compose -p scoredb exec server php artisan db:update
