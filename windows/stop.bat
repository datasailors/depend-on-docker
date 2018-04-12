@echo off

call env

docker container rm -f %CONTAINER%

