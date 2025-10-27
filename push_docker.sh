docker build --no-cache --platform linux/amd64 -t public.ecr.aws/theplant/postgresmd:13  --build-arg VER=13-3.5 .
docker push public.ecr.aws/theplant/postgresmd:13

docker build --no-cache --platform linux/amd64 -t public.ecr.aws/theplant/postgresmd:14  --build-arg VER=14-3.5 .
docker push public.ecr.aws/theplant/postgresmd:14

docker build --no-cache --platform linux/amd64 -t public.ecr.aws/theplant/postgresmd:15  --build-arg VER=15-3.5 .
docker push public.ecr.aws/theplant/postgresmd:15

docker build --no-cache --platform linux/amd64 -t public.ecr.aws/theplant/postgresmd:16  --build-arg VER=16-3.5 .
docker push public.ecr.aws/theplant/postgresmd:16

docker build --no-cache --platform linux/amd64 -t public.ecr.aws/theplant/postgresmd:17  --build-arg VER=17-3.5 .
docker push public.ecr.aws/theplant/postgresmd:17

docker build --no-cache --platform linux/amd64 -t public.ecr.aws/theplant/postgresmd:18  --build-arg VER=18-3.6 .
docker push public.ecr.aws/theplant/postgresmd:18
