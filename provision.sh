#!/bin/bash
set -e

POSTGRESQL_BIN=/usr/lib/postgresql/9.4/bin/postgres
POSTGRESQL_CONFIG_FILE=/etc/postgresql/9.4/main/postgresql.conf
POSTGRESQL_DATA=/var/lib/postgresql/9.4/main

POSTGRESQL_SINGLE="sudo -u postgres $POSTGRESQL_BIN --single --config-file=$POSTGRESQL_CONFIG_FILE"

if [ ! -d $POSTGRESQL_DATA ]; then
    mkdir -p $POSTGRESQL_DATA
    chown -R postgres:postgres $POSTGRESQL_DATA
    sudo -u postgres /usr/lib/postgresql/9.4/bin/initdb -D $POSTGRESQL_DATA -E 'UTF-8'
fi

# setup database
$POSTGRESQL_SINGLE <<< "CREATE USER ${DB_USERNAME} WITH PASSWORD '${DB_PASSWORD}';" > /dev/null
$POSTGRESQL_SINGLE <<< "ALTER USER ${DB_USERNAME} WITH superuser;" > /dev/null
$POSTGRESQL_SINGLE <<< "CREATE DATABASE ${DB_DATABASE} WITH OWNER=${DB_USERNAME} LC_COLLATE='en_US.utf8' LC_CTYPE='en_US.utf8' ENCODING='UTF8' TEMPLATE=template0;" > /dev/null

exec sudo -u postgres $POSTGRESQL_BIN --config-file=$POSTGRESQL_CONFIG_FILE
