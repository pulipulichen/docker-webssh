TAG=20220501-1556

docker build -t pudding/gitlab-to-argocd:$TAG .
docker push pudding/gitlab-to-argocd:$TAG