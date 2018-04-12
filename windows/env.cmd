@echo off

rem Call helper functions
call fun

rem Note: To set any setting below to blank use the space character
rem       example: set REGISTRY= 

rem Proxy settings [optional] - set if your network requires a proxy to connect to the Internet
set http_proxy=http://PITC-Zscaler-US-SanRamon-Shared.proxy.corporate.ge.com:80
set https_proxy=http://PITC-Zscaler-US-SanRamon-Shared.proxy.corporate.ge.com:80
set no_proxy=ge.com,localhost

rem Docker image settings
rem REGISTRY: [optional] - Docker registry path including trailing "/". Example: registry.company.com/demo/
set REGISTRY= 
rem IMAGE: <required> - Docker image name for this project. Example: myapp
set IMAGE=myapp
rem VERSION: [optional] - Version tag for this Docker image. Example: v20180302
set VERSION=v%date:~-4%%date:~4,2%%date:~7,2%
if "%VERSION%" == "" (
	set TAG=
) else (
	set TAG=:%VERSION%
)
rem BUILD_OPTS: [optional] - arguments for the docker image build command
set BUILD_OPTS=--build-arg http_proxy=%http_proxy% --build-arg https_proxy=%https_proxy% --build-arg no_proxy=%no_proxy%

rem Docker container runtime settings
rem CONTAINER_NAME: [optional] - Name of the Docker container including the --name switch. Example --name myapp
set CONTAINER=%IMAGE%
set CONTAINER_NAME=--name %CONTAINER%
rem Port map [optional] - Mapping of external to internal ports including the -p switch. Example -p 80:8080 
set PORT_MAP=-p 80:8080
rem Volume map [optional] - Mapping of external to internal paths including the -v switch. Example %cd%:/wd
set VOL_MAP=-v %cd%:c:/wd
rem Network [optional] - Network name including the --net switch. Example --net mynet
set NETWORK= 
rem RUN_OPTS [optional] - additional options to specify with the run comman. Example -e POSTGRES_DB=dbname
set RUN_OPTS=-e http_proxy=%http_proxy% -e https_proxy=%https_proxy% -e no_proxy=%no_proxy%

