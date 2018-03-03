#!/bin/bash

source .env

if [ -z "$1" ]; then
	MODE=-d
else
	MODE=-it
fi 

docker container run -e http_proxy=$http_proxy -e https_proxy=$https_proxy -e no_proxy=$no_proxy ${CONTAINER_MAP} ${MODE} ${NETWORK} ${PORT_MAP} ${VOL_MAP} ${REGISTRY}${IMAGE}${TAG} $@

