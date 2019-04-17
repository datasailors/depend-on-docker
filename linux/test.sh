#!/bin/bash

source .env

echo "Testing ${IMAGE} ..."

docker container run ${RUN_OPTS} ${CONTAINER_NAME}-test --rm ${NETWORK} ${PORT_MAP} ${VOL_MAP} ${REGISTRY}${IMAGE}${TAG} sh -c "for t in \$(ls /test*.sh); do echo Running test \$t; \$t; done;" 


