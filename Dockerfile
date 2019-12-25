ARG VER=9
FROM postgres:$VER
COPY create-multiple-postgresql-databases.sh /docker-entrypoint-initdb.d/
