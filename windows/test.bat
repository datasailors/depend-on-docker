@echo off

call env

echo Testing %IMAGE% ...

set MODE=-it

docker container run %RUN_OPTS% %CONTAINER_NAME%-test --rm %MODE% %NETWORK% %PORT_MAP% %VOL_MAP% %REGISTRY%%IMAGE%%TAG% cmd.exe /C "@echo off & FOR %%t IN (test*.bat) DO echo Running test %%t & %%t"


