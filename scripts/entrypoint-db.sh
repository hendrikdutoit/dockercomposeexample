#!/bin/bash
# scripts/entrypoint-db.sh

# Substitute environment variables in the SQL template to create an actual SQL file.
# Ensure that 'envsubst' is available (it is typically installed in Debian-based images)
envsubst < /docker-entrypoint-initdb.d/init.sql.template > /docker-entrypoint-initdb.d/init.sql

# Call the original MariaDB entrypoint with native password option
exec docker-entrypoint.sh mysqld --default-authentication-plugin=mysql_native_password
