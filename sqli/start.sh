#!/bin/sh

sed -i '/\[mysqld\]/asecure_file_priv=""' /etc/mysql/my.cnf
find /var/lib/mysql -type f -exec touch {} \; && /etc/init.d/mysql restart
chown -R mysql:mysql /var/run/mysqld/
chmod -R 777 /var/www/html/
mysql -e "grant all privileges on *.* to 'root'@'localhost' identified by 'toor';"

sed -i 's/\$dbpass.*/\$dbpass="toor";/' /var/www/html/sqli-labs/sql-connections/db-creds.inc
rm /var/www/html/index.html

apache2ctl stop
apache2ctl -D FOREGROUND
