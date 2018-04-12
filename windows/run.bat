@echo off

call env

if "%1" == "" (
	set MODE=-d
) else (
	set MODE=-it
) 

docker container run %RUN_OPTS% %CONTAINER_NAME% %MODE% %NETWORK% %PORT_MAP% %VOL_MAP% %REGISTRY%%IMAGE%%TAG% %*

