# stopping the containers. Note that this will remove all existing docker containers
docker-compose -f ./network-config/docker-compose-kafka.yml down
docker-compose -f ./network-config/docker-compose-cli.yml down
echo y | docker network prune
echo y | docker volume prune
