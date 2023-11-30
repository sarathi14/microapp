docker run -d -p 8001:8001 accelesenseapi:0.1

container_ID=`docker ps -q --filter ancestor=accelesenseapi:0.1`
echo $container_ID
echo

docker logs -f $container_ID 