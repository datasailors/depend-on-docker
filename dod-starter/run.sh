#!/bin/bash

source .env

if [ -z "$1" ]; then
	MODE=-d
else
	MODE=-it
fi 

docker container run ${CONTAINER} ${MODE} ${NETWORK} ${PORT_MAP} ${VOL_MAP} ${REGISTRY}${IMAGE}${TAG} $@

