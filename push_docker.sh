docker build -t public.ecr.aws/theplant/postgresmd:14-ssl  --build-arg VER=14-3.5 .
docker push public.ecr.aws/theplant/postgresmd:14-ssl

docker build -t public.ecr.aws/theplant/postgresmd:15-ssl  --build-arg VER=15-3.5 .
docker push public.ecr.aws/theplant/postgresmd:15-ssl

docker build -t public.ecr.aws/theplant/postgresmd:16-ssl  --build-arg VER=16-3.5 .
docker push public.ecr.aws/theplant/postgresmd:16-ssl

docker build -t public.ecr.aws/theplant/postgresmd:17-ssl  --build-arg VER=17-3.5 .
docker push public.ecr.aws/theplant/postgresmd:17-ssl

docker build -t public.ecr.aws/theplant/postgresmd:18-ssl  --build-arg VER=18-3.6 .
docker push public.ecr.aws/theplant/postgresmd:18-ssl
