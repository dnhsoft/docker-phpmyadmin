#!/bin/bash

#stop on error
set -e

echo "Starting mysql container..."
docker run -d -e MYSQL_PASS=123456 --name testpmadb tutum/mysql:5.6

./test-single.sh 4.0.10.7
./test-single.sh 4.2.13.1
./test-single.sh 4.3.5
./test-single.sh 4.3.6
./test-single.sh 4.3.7
./test-single.sh 4.3.8
./test-single.sh 4.3.9
./test-single.sh 4.3.10
./test-single.sh 4.3.11.1
./test-single.sh 4.3.12
./test-single.sh 4.4.0
./test-single.sh 4.4.1
./test-single.sh 4.4.1.1
./test-single.sh 4.4.2
./test-single.sh 4.4.3


echo "Stopping mysql container..."
docker stop testpmadb
docker rm testpmadb
