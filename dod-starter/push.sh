#!/bin/bash

source .env

docker push ${REGISTRY}${IMAGE}${TAG}

