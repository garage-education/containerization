#!/usr/bin/env bash

docker --version
# Docker version 19.03.5, build 633a0ea

docker run hello-world
# Unable to find image 'hello-world:latest' locally
#    latest: Pulling from library/hello-world
#    ca4f61b1923c: Pull complete
#    Digest: sha256:ca0eeb6fb05351dfc8759c20733c91def84cb8007aa89a5bf606bc8b315b9fc7
#    Status: Downloaded newer image for hello-world:latest
#
#    Hello from Docker!
#    This message shows that your installation appears to be working correctly.

docker images ls
# REPOSITORY                                TAG                 IMAGE ID            CREATED             SIZE
# hello-world                               latest              fce289e99eb9        15 months ago       1.84kB

docker ps --all
#    CONTAINER ID     IMAGE           COMMAND      CREATED            STATUS
#    54f4984ed6a8     hello-world     "/hello"     20 seconds ago     Exited (0) 19 seconds ago


