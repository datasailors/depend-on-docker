#!/bin/bash

. env.sh

docker image build --build-arg http_proxy=${http_proxy} --build-arg https_proxy=${https_proxy} --build-arg no_proxy=${no_proxy} -t ${DOCKER_REGISTRY}/${DOCKER_IMAGE}:${DOCKER_IMAGE_TAG} .

