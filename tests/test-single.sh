#!/bin/bash

TAG=$1

echo "Starting test of phpmyadmin $TAG..."

mkdir -p logs

docker build -t pmatest:$TAG ./../$TAG

echo "Starting phpmyadmin $TAG container..."
docker run -d --name pmatest --link testpmadb:db -p 8001:80 pmatest:$TAG
docker exec pmatest bash -c "/wait-mysql.sh"

./test-html-content.sh $TAG

echo "Killing phpmyadmin $TAG container and images..."
docker stop pmatest
docker rm pmatest
docker rmi pmatest:$TAG

echo "Finished test of phpmyadmin $TAG"