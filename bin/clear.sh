#!/bin/bash

docker-compose rm -f
PREFIX=$(pwd | xargs basename)
docker volume rm $(docker volume ls -q | grep $PREFIX)
