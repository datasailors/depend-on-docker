@echo off

if "%1" == "" (
	set dest="%cd%\out"
) else (
	set dest=%1
)

if not exist %dest% (
	md %dest%
)

docker container run --rm -d -v "%dest%":"c:\wd" bhgedigital/win-svn cmd /C "cd c:\wd && svn checkout https://github.com/bhgedigital/depend-on-docker/trunk/windows/"

