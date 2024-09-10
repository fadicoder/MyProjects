#!/bin/bash

docker stop $(docker ps -a -q) > /dev/null
docker rm $(docker ps -a -q) > /dev/null
docker rmi -f $(docker images -aq)
