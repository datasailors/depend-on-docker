#!/bin/bash

. env.sh

docker push ${DOCKER_REGISTRY}/${DOCKER_IMAGE}:${DOCKER_IMAGE_TAG}

