@echo off

call env

docker ps -a | findstr /R /C:"%CONTAINER%"

