docker build -t public.ecr.aws/theplant/postgresmd:12  --build-arg VER=12-3.3 .
docker push public.ecr.aws/theplant/postgresmd:12

docker build -t public.ecr.aws/theplant/postgresmd:13  --build-arg VER=13-3.3 .
docker push public.ecr.aws/theplant/postgresmd:13

docker build -t public.ecr.aws/theplant/postgresmd:14  --build-arg VER=14-3.3 .
docker push public.ecr.aws/theplant/postgresmd:14

docker build -t public.ecr.aws/theplant/postgresmd:15  --build-arg VER=15-3.3 .
docker push public.ecr.aws/theplant/postgresmd:15