#!/bin/bash

. env.sh

docker ps -a | grep ${DOCKER_CONTAINER}

