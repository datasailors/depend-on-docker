@echo off

call env

docker image push %REGISTRY%%IMAGE%%TAG%

