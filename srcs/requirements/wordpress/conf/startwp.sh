#!/bin/sh
if [ ! -f "/var/www/wp-config.php" ]; then
	wp config create --dbname=${DB_NAME} --dbuser=${DB_USER} --dbpass=${DB_PASS} --dbhost=mariadb
	wp core install --url=jsantann.42.fr --title=Example --admin_user=supervisor --admin_password=strongpassword --admin_email=info@example.com
fi
/usr/sbin/php-fpm82 -F
