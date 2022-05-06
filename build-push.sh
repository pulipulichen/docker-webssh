TAG=20220505-2243
REPO=docker-webssh

docker build -t pudding/$REPO:$TAG .
docker push pudding/$REPO:$TAG