@echo off

call env

if "%1" == "" (
	set C=cmd
) else (
	set C=%*
)

docker container exec -it %CONTAINER% %C% 

