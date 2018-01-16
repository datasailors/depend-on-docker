#!/bin/bash

. env.sh

docker pull ${DOCKER_REGISTRY}/${DOCKER_IMAGE}:${DOCKER_IMAGE_TAG}

