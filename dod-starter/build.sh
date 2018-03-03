#!/bin/bash

source .env

# Build Docker image
docker image build --build-arg http_proxy=${http_proxy} --build-arg https_proxy=${https_proxy} --build-arg no_proxy=${no_proxy} -t ${REGISTRY}${IMAGE}${TAG} .

