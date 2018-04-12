@echo off

rem Helper functions

rem call:%~1

rem Detect current operating system
:os
        set OPERATING_SYSTEM=Windows
	rem echo OPERATING_SYSTEM=%OPERATING_SYSTEM%
	ver > tmp.txt
        findstr /V /R /C:"^$" tmp.txt > tmp1.txt
	set /P OPERATING_SYSTEM_VERSION=<tmp1.txt
	rem echo OPERATING_SYSTEM_VERSION=%OPERATING_SYSTEM_VERSION%
        del tmp.txt
	del tmp1.txt
rem goto:eof

rem Determine current host IP address
:hostip
	ipconfig | findstr /R /C:"IPv4 Address" | findstr /R /C:"10." > tmp.txt
        for /F "tokens=14" %%A in (tmp.txt) do (
		set HOST_IP=%%A
		rem echo HOST_IP=%HOST_IP%
	)
	del tmp.txt
rem goto:eof

:eof

