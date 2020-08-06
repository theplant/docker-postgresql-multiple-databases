ARG VER=9
FROM postgis/postgis:$VER
COPY create-multiple-postgresql-databases.sh /docker-entrypoint-initdb.d/
