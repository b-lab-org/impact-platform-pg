#!/bin/bash
set -e

echo "host all  all    0.0.0.0/0  md5" >> /var/lib/postgresql/data/pg_hba.conf
echo "checkpoint_segments=200" >> /var/lib/postgresql/data/postgresql.conf
echo "ssl = true" >> /var/lib/postgresql/data/postgresql.conf
echo "ssl_cert_file = '/ssl/cert.crt'" >> /var/lib/postgresql/data/postgresql.conf
echo "ssl_key_file = '/ssl/cert.key'" >> /var/lib/postgresql/data/postgresql.conf