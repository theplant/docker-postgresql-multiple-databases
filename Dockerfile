ARG VER=9
FROM postgis/postgis:$VER
RUN apt-get update && apt-get install -y --no-install-recommends openssl && rm -rf /var/lib/apt/lists/*
COPY create-multiple-postgresql-databases.sh /docker-entrypoint-initdb.d/
COPY --chmod=0755 configure-ssl.sh /docker-entrypoint-initdb.d/
ENV POSTGRES_ENABLE_SSL=true
