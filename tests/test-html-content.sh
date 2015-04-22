#!/bin/bash

TAG=$1

curl localhost:8001 > ./temp.test

FOUND_TXT=$(grep '<li id="li_server_info">Server: db via TCP/IP</li><li id="li_server_type">Server type: MySQL</li><li id="li_server_version">Server version: 5.6.19-0ubuntu0.14.04.1 - (Ubuntu)</li>' ./temp.test)
if [ "$FOUND_TXT" == "" ]; then
   echo "Test failed for phpmyadmin $TAG!"
   echo "[$(date +%Y-%m-%d-%H-%m-%S)] Test failed for phpmyadmin $TAG" >> ./logs/tests.log
else
   echo "Test passed for phpmyadmin $TAG!"
fi

rm ./temp.test