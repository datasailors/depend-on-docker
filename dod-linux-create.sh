#!/bin/bash

if [ -z "$1" ]; then
	dest=$(pwd)/out
else
	dest=$1
fi

docker container run --rm -it -v ${dest}:/wd iankoulski/svn sh -c "svn checkout https://github.build.ge.com/200018807/depend-on-docker/linux/trunk/ /wd"

