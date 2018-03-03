#!/bin/bash

source .env

docker pull ${REGISTRY}${IMAGE}${TAG}

