# stopping the containers. Note that this will remove all existing docker containers
docker-compose -f docker-compose-org1.yml down
docker-compose -f docker-compose-org2.yml down
docker-compose -f docker-compose-kafka.yml down
docker-compose -f docker-compose-cli-org1.yml down
docker-compose -f docker-compose-cli-org2.yml down
echo y | docker network prune
echo y | docker volume prune
