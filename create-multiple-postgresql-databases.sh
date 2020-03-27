#!/bin/bash

set -e
set -u

function create_user_and_database() {
	local database=$1
	echo "  Creating user and database '$database'"
	psql -v ON_ERROR_STOP=1 --username "$POSTGRES_USER" <<-EOSQL
	    CREATE USER $database;
	    CREATE DATABASE $database;
	    GRANT ALL PRIVILEGES ON DATABASE $database TO $database;
EOSQL
}

function create_extension_on_database() {
	local database=$1
	local extension=$2
	echo "    Creating extension '$extension'"
	psql -v ON_ERROR_STOP=1 --username "$POSTGRES_USER" -d $database <<-EOSQL
	    CREATE EXTENSION IF NOT EXISTS $extension;
EOSQL
}

if [ -n "$POSTGRES_MULTIPLE_DATABASES" ]; then
	echo "Multiple database creation requested: $POSTGRES_MULTIPLE_DATABASES"
	for db in $(echo $POSTGRES_MULTIPLE_DATABASES | tr ',' ' '); do
		create_user_and_database $db

		if [ ! -z "${POSTGRES_EXTENSIONS-}" ]; then
			echo "  Extensions creation requested: $db"
			for ext in $(echo $POSTGRES_EXTENSIONS | tr ',' ' '); do
				create_extension_on_database $db $ext
			done
			echo "  Extensions created"
		fi
	done
	echo "Multiple databases created"
fi
