@echo off

call env

docker container logs -f %CONTAINER%

