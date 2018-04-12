@echo off

call env

docker image pull %REGISTRY%%IMAGE%%TAG%

