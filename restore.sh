#!/bin/bash

MYSQL=$(docker-compose ps | grep mariadb | awk '{ print $1 }')
docker exec $MYSQL /bin/bash -c "mysql -u root bitnami_redmine < /bitnami/mariadb/database.sql"