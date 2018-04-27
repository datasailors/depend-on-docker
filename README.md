# depend-on-docker
Depend on Docker (DoD) is an open source project that makes any software easy to build, ship, and run!
It removes complexity by containerizing your executables and all of their dependencies. 

# Your only dependency
If you haven't done so already, please install [Docker](https://www.docker.com/get-docker)

# Create your depend-on-docker project
This project works on both Linux and Windows. It strives to drastically simplify your development process and make it easy to build Docker containers by providing an intuitive project template. To create a project, you can execute the corresponding script, or just run the command line relevant to your operating system below.

## Linux, MacOS

    create.sh [new_project_path]

or

    docker container run --rm -it -v $(pwd):/wd iankoulski/svn sh -c "svn checkout https://github.build.ge.com/200018807/depend-on-docker/trunk/linux/ /wd"

## Windows

    create.bat [new_project_path]

or

    docker container run --rm -it -v "%cd%":"c:\wd" iankoulski/win-svn cmd /C "cd c:\wd && svn checkout https://github.build.ge.com/200018807/depend-on-docker/trunk/windows/" 

# Customize your depend-on-docker project
Your depend-on-docker project is created with default settings that work out of the box and creates a Docker image called "myapp". There are several settings that you can customize to make this project fit your needs.

## Environment file

    Linux: .env ; Windows: env.cmd

The environment file contains all build-time and run-time settings for your project.
Edit this file to change the name and version tag of your Docker container image, the registry where this image would be stored, the volume mount and port mapping settings for your Docker container, etc.

## Container-Root content

    Linux:  Container-Root -> / ; Windows: Container-Root -> C:\
    
Any artifact placed in the Container-Root folder of this project is copied into the container image. Directory Container-Root is copied to the root path within the container image and subdirectories are included, preserving the subdirectory structure. For example, any items placed in Container-Root/opt/myapp will appear under /opt/myapp within the container.

## Setup script file

    Linux: Container-Root/setup.sh, Windows: Container-Root\setup.bat
    
The setup script file is copied into the root of the container image and executed at build time. Rather than customizing the Dockerfile, the setup script file is a good location for placing all of the project-specific commands you would like to execute when setting up the software in your container image.
The Dockerfile can be modified to further customize your project, however that is not required.

## Startup script file

    Linux: Container-Root/startup.sh, Windows: Container-Root\startup.bat
    
The startup script file is available in the root of the container image and is executed at container startup time. Place the command to start your application in this file.

# Use your depend-on-docker project
For ease of use, all Docker commands required to use this project have been embedded into intuitively named native shell scripts.

## Build

    Linux: ./build.sh ; Windows: build.bat

Builds the Docker container image and tags it using the registry and version tag settingsspecified in your environment file

## Ship (push and pull)

    Linux: ./push.sh or ./pull.sh ; Windows: push.bat or pull.bat

Pushes or pulls the Docker container image to of from the registry specified in your environment file

## Run

    Linux: ./run.sh [command] ; Windows: run.bat [command]

Creates a docker container and, if no argument is specified, executes the startup script. If a command line is specified as an argument to the run script, this command line is executed in the container in place of the default startup script.

## Logs

    Linux: ./logs.sh ; Windows: logs.bat

Tails the output of the command executed inside the container. Use Ctrl-C to stop the tail.

## Exec

    Linux: ./exec.sh [command] ; Windows: exec.bat [command]

This script requires a running container to exist. It executes the specified command in the running container. If no command is specified as an argument, then a default command is executed to open a new interactive shell within the container.

## Status

    Linux: ./status.sh ; Windows: status.bat

This script shows the current status of the Docker container including any mapped ports.

## Stop

    Linux: ./stop.sh ; Windows: stop.bat

Stops the container and cleans up its files.

# Conclusion

Depend on Docker is an easy to use project template that helps start working quickly on any of your projects. It lets you embed the knowledge you have about your software into a container that hides away complexities and makes it easy to build, ship, and run on Linux or Windows, locally, in a data center, and on any cloud. To accomplish all of it, the only dependency you need is Docker!

