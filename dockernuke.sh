docker rm $(docker ps --filter status=exited -q)
docker image prune --all --force
docker volume prune --force

