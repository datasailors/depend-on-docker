#!/bin/bash

source .env

if [ "$1" == "" ]; then
	CMD=bash
else
	CMD=$@
fi

docker container exec --name ${CONTAINER} $CMD 

