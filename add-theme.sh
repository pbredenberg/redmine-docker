#!/bin/bash

REDMINE=$(docker-compose ps | grep redminedocker_redmine | awk '{ print $1 }')
echo -n "Enter your theme name: "
read THEME
if [ "$THEME" != "" ]; then
	echo $THEME
	docker exec -it $REDMINE ln -sf /bitnami/redmine/public/themes/$THEME /opt/bitnami/redmine/public/themes/
else
	echo "Please enter a theme name."
fi
