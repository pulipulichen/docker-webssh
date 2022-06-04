TAG=20220604-1959
REPO=docker-webssh

docker build -t pudding/$REPO:$TAG .
docker push pudding/$REPO:$TAG