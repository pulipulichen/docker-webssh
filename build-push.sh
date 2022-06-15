TAG=20220615-2218
REPO=docker-webssh

docker build -t pudding/$REPO:$TAG .
docker push pudding/$REPO:$TAG
docker rmi pudding/$REPO:$TAG