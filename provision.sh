#!/bin/bash
set -e

# connections
echo "host all  all    0.0.0.0/0  md5" >> /var/lib/postgresql/data/pg_hba.conf

# turn on ssl
cd "${PGDATA}"
cp /ssl/cert.crt "${PGDATA}"/server.crt
cp /ssl/cert.key "${PGDATA}"/server.key
chmod og-rwx server.key
chown -R postgres:postgres "${PGDATA}"

sed -ri "s/^#?(ssl\s*=\s*)\S+/\1'on'/" "$PGDATA/postgresql.conf"