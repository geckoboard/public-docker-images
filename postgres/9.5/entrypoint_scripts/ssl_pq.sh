#!/bin/bash

set -e

echo "Copying certs to ~"
cp /var/ssl/* ~/

echo "Revising permissions"
chown postgres: ~/server.*
chmod 600 ~/server.*

echo "Copying certs to $PGDATA"
cp ~/server.* $PGDATA

echo "Updating the postgres.conf for ssl"
sed -ri "s/^#?(ssl\s*=\s*)\S+/\1'on'/" "$PGDATA/postgresql.conf"
