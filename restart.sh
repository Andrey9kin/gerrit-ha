docker stack rm gerrit
while [  ! -z "$(docker network ls | grep gerrit)" ]; do
     sleep 5
done
docker stack deploy --compose-file=docker-compose.yml gerrit
sleep 10
docker stack ps gerrit
docker stack services gerrit
