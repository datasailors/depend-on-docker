#!/bin/bash

. env.sh

docker container run --name ${DOCKER_CONTAINER} -d -p ${PORT}:8000 ${DOCKER_REGISTRY}/${DOCKER_IMAGE}:${DOCKER_IMAGE_TAG}

