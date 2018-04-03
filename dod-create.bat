@echo off

if ( "%%1" == "" ) 
	set dest=%(cd)/out
else
	set dest=%%1
fi

docker container run --rm -it -v %dest%:\\wd iankoulski/svn sh -c "svn checkout https://github.build.ge.com/200018807/depend-on-docker/trunk/windows/ /wd"

