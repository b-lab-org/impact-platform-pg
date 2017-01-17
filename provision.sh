#!/bin/bash
set -e

echo "host all  all    0.0.0.0/0  md5" >> /var/lib/postgresql/data/pg_hba.conf
# echo "listen_addresses='*'" >> /var/lib/postgresql/data/postgresql.conf
echo "checkpoint_segments=200" >> /var/lib/postgresql/data/postgresql.conf
echo "ssl = true" >> /var/lib/postgresql/data/postgresql.conf
echo "ssl_cert_file = '/etc/ssl/certs/ssl-cert-snakeoil.pem'" >> /var/lib/postgresql/data/postgresql.conf
echo "ssl_key_file = '/etc/ssl/private/ssl-cert-snakeoil.key'" >> /var/lib/postgresql/data/postgresql.conf

