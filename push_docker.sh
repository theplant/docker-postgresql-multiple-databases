docker build -t theplant/postgresmd:9-20220314 --build-arg VER=9.6-3.0 .
docker push theplant/postgresmd:9-20220314

docker build -t theplant/postgresmd:10-20220314  --build-arg VER=10-3.0 .
docker push theplant/postgresmd:10-20220314

docker build -t theplant/postgresmd:11-20220314  --build-arg VER=11-3.0 .
docker push theplant/postgresmd:11-20220314
