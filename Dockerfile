FROM postgres:9
COPY create-multiple-postgresql-databases.sh /docker-entrypoint-initdb.d/
