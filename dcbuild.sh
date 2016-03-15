#!/usr/bin/env bash

compfile="./docker-compose.yml"
dc="docker-compose -f ${compfile}"

# build the images foro use in compose
./docker_images/build_images.sh
# now build the compose 
$dc build
