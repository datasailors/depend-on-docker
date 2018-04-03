#!/bin/bash

if [ -z "$1" ]; then
	dest=$(pwd)/out
else
	dest=$1
fi

export dod_url=https://github.build.ge.com/200018807/depend-on-docker/trunk/linux/

echo ""
echo "Copying ${dod_url} to ${dest} ..."
echo ""
echo -n "[Username]:"
read username
echo -n "[Password]:"
read -s password
echo ""
echo ""

#docker container run --rm -it -v ${dest}:/wd iankoulski/svn sh -c "svn checkout ${dod_url} /wd"
docker container run --rm -it -v ${dest}:/wd iankoulski/svn sh -c "svn checkout --trust-server-cert --non-interactive --username ${username} --password ${password} ${dod_url} /wd"

