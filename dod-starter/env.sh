#!/bin/bash

export DOCKER_REGISTRY=[optional: your docker registry, example: registry.mycomplany.com/demo]
export DOCKER_IMAGE=<required: your image name, example: myimage>
export DOCKER_IMAGE_TAG=[optional: your image tag, example: v20180115>
export DOCKER_CONTAINER=${DOCKER_IMAGE}
export PORT=80
export http_proxy=http://PITC-Zscaler-US-SanRamon-Shared.proxy.corporate.ge.com:80
export https_proxy=http://PITC-Zscaler-US-SanRamon-Shared.proxy.corporate.ge.com:80
export no_proxy=ge.com,localhost

# Detects current operating system
function os
{
        UNAME=$(uname -a)
        if [ $(echo $UNAME | awk '{print $1}') == "Darwin" ]; then
                export OPERATING_SYSTEM="MacOS"
        elif [ $(echo $UNAME | awk '{print $1}') == "Linux" ]; then
                export OPERATING_SYSTEM="Linux"
        elif [ ${UNAME:0:5} == "MINGW" ]; then
                export OPERATING_SYSTEM="Windows"
                export MSYS_NO_PATHCONV=1 # turn off path conversion
        else
                export OPERATING_SYSTEM="Other"
        fi
}
# End detect_os function
os

# Host IP
case "${OPERATING_SYSTEM}" in
        "Linux")
                export HOST_IP=$(hostname -I | tr " " "\n" | head -1) # Linux
                ;;
        "MacOS")
                export HOST_IP=$(ifconfig | grep -v 127.0.0.1 | grep -v inet6 | grep inet | head -n 1 | awk '{print $2}') # Mac OS
                ;;
        "Windows")
                export HOST_IP=$( ((ipconfig | grep IPv4 | grep 10.187 | tail -1) && (ipconfig | grep IPv4 | grep 3. | head -1)) | tail -1 | awk '{print $14}' ) # Git bash
                ;;
        *)
                export HOST_IP=$(hostname)
                ;;
esac

