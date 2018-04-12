@echo off

call env

rem Build Docker image
docker image build %BUILD_OPTS% -t %REGISTRY%%IMAGE%%TAG% .

