#!/bin/bash

source .env

if [ "$1" == "" ]; then
	CMD="if [ -e /bin/bash ]; then /bin/bash; else /bin/sh; fi"
else
	CMD=$@
fi

docker container exec -it ${CONTAINER} $CMD 

