#!/bin/bash

set -e
set -u

if [ "${POSTGRES_ENABLE_SSL:-}" != "true" ]; then
    exit 0
fi

echo "Configuring PostgreSQL SSL with a self-signed certificate..."

openssl req -new -x509 -days "${POSTGRES_SSL_DAYS:-3650}" -nodes \
    -subj "/CN=${POSTGRES_SSL_CN:-postgres}" \
    -out "$PGDATA/server.crt" \
    -keyout "$PGDATA/server.key"

chmod 0600 "$PGDATA/server.key"

psql -v ON_ERROR_STOP=1 --username "$POSTGRES_USER" -c "ALTER SYSTEM SET ssl = on;"

echo "SSL configuration done"
