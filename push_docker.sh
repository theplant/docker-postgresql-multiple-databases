docker build -t public.ecr.aws/theplant/postgresmd:9 --build-arg VER=9.6-3.0 .
docker push public.ecr.aws/theplant/postgresmd:9

docker build -t public.ecr.aws/theplant/postgresmd:10  --build-arg VER=10-3.0 .
docker push public.ecr.aws/theplant/postgresmd:10

docker build -t public.ecr.aws/theplant/postgresmd:11  --build-arg VER=11-3.0 .
docker push public.ecr.aws/theplant/postgresmd:11
