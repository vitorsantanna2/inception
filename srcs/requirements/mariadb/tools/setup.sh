#!/bin/sh

if [ ! -d "/var/lib/mysql/$DATABASE" ]; then
	mysqld_safe --datadir=/var/lib/mysql&
	sleep 1

mysql -e "CREATE DATABASE $DATABASE;"
mysql -e "CREATE USER $SQL_USR@'%' IDENTIFIED BY '$SQL_PASSWD';"
mysql -e "GRANT ALL PRIVILEGES ON $DATABASE.* TO $SQL_USR@'%';"
mysql -e "FLUSH PRIVILEGES;"

mysqladmin -u root shutdown
fi

exec mysqld_safe --datadir=/var/lib/mysql
