#!/usr/bin/env bash

docker --version # -v or version
# Docker version 19.03.5, build 633a0ea

docker run hello-world
# Unable to find image hello-world:latest locally
#    latest: Pulling from library/hello-world
#    ca4f61b1923c: Pull complete
#    Digest: sha256:ca0eeb6fb05351dfc8759c20733c91def84cb8007aa89a5bf606bc8b315b9fc7
#    Status: Downloaded newer image for hello-world:latest
#
#    Hello from Docker!
#    This message shows that your installation appears to be working correctly.

docker pull docker/whalesay
# Using default tag: latest
# latest: Pulling from docker/whalesay
# Image docker.io/docker/whalesay:latest uses outdated schema1 manifest format. Please upgrade to a schema2 image for better future compatibility. More information at https://docs.docker.com/registry/spec/deprecated-schema-v1/
# e190868d63f8: Pull complete
# 909cd34c6fd7: Pull complete
# 0b9bfabab7c1: Pull complete
# a3ed95caeb02: Pull complete
# 00bf65475aba: Pull complete
# c57b6bcc83e3: Pull complete
# 8978f6879e2f: Pull complete
# 8eed3712d2cf: Pull complete
# Digest: sha256:178598e51a26abbc958b8a2e48825c90bc22e641de3d31e18aaf55f3258ba93b
# Status: Downloaded newer image for docker/whalesay:latest
# docker.io/docker/whalesay:latest
docker run docker/whalesay cowsay Garage Education
#  __________________
# < Garage Education >
#  ------------------
#     \
#      \
#       \
#                     ##        .
#               ## ## ##       ==
#            ## ## ## ##      ===
#        /""""""""""""""""___/ ===
#   ~~~ {~~ ~~~~ ~~~ ~~~~ ~~ ~ /  ===- ~~~
#        \______ o          __/
#         \    \        __/
#           \____\______/

docker ps
# CONTAINER ID IMAGE COMMAND CREATED STATUS PORTS NAMES
docker ps -a # --all
# CONTAINER ID IMAGE    COMMAND       CREATED       STATUS                   NAMES
# 5bf7bfb3de4a whalesay cowsay Garage 8 minutes ago Exited (0) 3 minutes ago friendly_roentgen
docker run docker/whalesay cowsay Garage Education
docker run docker/whalesay cowsay Garage Education
docker run docker/whalesay cowsay Garage Education
docker run docker/whalesay cowsay Garage Education
# CONTAINER ID IMAGE    COMMAND       CREATED        STATUS                   NAMES
# 44b30241b056 whalesay cowsay Garage 3 seconds ago  Exited (0) 3 seconds ago inspiring_mendel
# 6a5acfb94078 whalesay cowsay Garage 5 seconds ago  Exited (0) 4 seconds ago happy_cannon
# eefc7f9cf8a6 whalesay cowsay Garage 6 seconds ago  Exited (0) 5 seconds ago agitated_hugle
# b361e061f108 whalesay cowsay Garage 8 seconds ago  Exited (0) 7 seconds ago confident_cori
# 5bf7bfb3de4a whalesay cowsay Garage 10 minutes ago Exited (0) 6 minutes ago friendly_roentgen

docker start -a -i friendly_roentgen
#  __________________
# < Garage Education >
#  ------------------
#     \
#      \
#       \
#                     ##        .
#               ## ## ##       ==
#            ## ## ## ##      ===
#        /""""""""""""""""___/ ===
#   ~~~ {~~ ~~~~ ~~~ ~~~~ ~~ ~ /  ===- ~~~
#        \______ o          __/
#         \    \        __/
#           \____\______/

docker ps -a -q
# 44b30241b056
# 6a5acfb94078
# eefc7f9cf8a6
# b361e061f108
# 5bf7bfb3de4a
docker rm 44b30241b056
# 44b30241b056
docker rm "$(docker ps -a -q)"
# 6a5acfb94078
# eefc7f9cf8a6
# b361e061f108
# 5bf7bfb3de4a
docker ps -a
# CONTAINER ID IMAGE COMMAND CREATED STATUS NAMES
docker run --rm docker/whalesay cowsay Garage Education
#  __________________
# < Garage Education >
#  ------------------
#     \
#      \
#       \
#                     ##        .
#               ## ## ##       ==
#            ## ## ## ##      ===
#        /""""""""""""""""___/ ===
#   ~~~ {~~ ~~~~ ~~~ ~~~~ ~~ ~ /  ===- ~~~
#        \______ o          __/
#         \    \        __/
#           \____\______/
docker ps -a
# CONTAINER ID IMAGE COMMAND CREATED STATUS NAMES

docker run docker/whalesay cowsay Garage Education
#  __________________
# < Garage Education >
#  ------------------
#     \
#      \
#       \
#                     ##        .
#               ## ## ##       ==
#            ## ## ## ##      ===
#        /""""""""""""""""___/ ===
#   ~~~ {~~ ~~~~ ~~~ ~~~~ ~~ ~ /  ===- ~~~
#        \______ o          __/
#         \    \        __/
#           \____\______/
docker ps -a
# CONTAINER ID IMAGE   COMMAND        CREATED       STATUS                   NAMES
# 6de4ea6d7231 whalesay cowsay Garage 3 seconds ago Exited (0) 2 seconds ago loving_antonelli
docker rename loving_antonelli whalesay
docker ps -a
# CONTAINER ID IMAGE    COMMAND        CREATED        STATUS                    NAMES                    NAMES
# 6de4ea6d7231 whalesay cowsay Garage  21 seconds ago Exited (0) 20 seconds ago whalesay
docker run --name education-whale docker/whalesay cowsay Garage Education
#  __________________
# < Garage Education >
#  ------------------
#     \
#      \
#       \
#                     ##        .
#               ## ## ##       ==
#            ## ## ## ##      ===
#        /""""""""""""""""___/ ===
#   ~~~ {~~ ~~~~ ~~~ ~~~~ ~~ ~ /  ===- ~~~
#        \______ o          __/
#         \    \        __/
#           \____\______/
docker ps -a
# CONTAINER ID IMAGE           COMMAND             CREATED       STATUS                   PORTS NAMES
# c870efd86657 docker/whalesay cowsay Garage Educa 3 seconds ago Exited (0) 2 seconds ago       education-whale

docker images
# REPOSITORY      TAG    IMAGE ID     CREATED     SIZE
# ubuntu          latest 4e5021d210f6 3 weeks ago 64.2MB
# docker/whalesay latest 6b362a9f73eb 4 years ago 247MB

docker rmi ubuntu
# Untagged: ubuntu:latest
# Untagged: ubuntu@sha256:bec5a2727be7fff3d308193cfde3491f8fba1a2ba392b7546b43a051853a341d
# Deleted: sha256:4e5021d210f65ebe915670c7089120120bc0a303b90208592851708c1b8c04bd
# Deleted: sha256:1d9112746e9d86157c23e426ce87cc2d7bced0ba2ec8ddbdfbcc3093e0769472
# Deleted: sha256:efcf4a93c18b5d01aa8e10a2e3b7e2b2eef0378336456d8653e2d123d6232c1e
# Deleted: sha256:1e1aa31289fdca521c403edd6b37317bf0a349a941c7f19b6d9d311f59347502
# Deleted: sha256:c8be1b8f4d60d99c281fc2db75e0f56df42a83ad2f0b091621ce19357e19d853
docker rmi "$(docker images -q)"
# Untagged: docker/whalesay:latest
# Untagged: docker/whalesay@sha256:178598e51a26abbc958b8a2e48825c90bc22e641de3d31e18aaf55f3258ba93b
# Deleted: sha256:6b362a9f73eb8c33b48c95f4fcce1b6637fc25646728cf7fb0679b2da273c3f4
# Deleted: sha256:34dd66b3cb4467517d0c5c7dbe320b84539fbb58bc21702d2f749a5c932b3a38
# Deleted: sha256:52f57e48814ed1bb08a651ef7f91f191db3680212a96b7f318bff0904fed2e65
# Deleted: sha256:72915b616c0db6345e52a2c536de38e29208d945889eecef01d0fef0ed207ce8
# Deleted: sha256:4ee0c1e90444c9b56880381aff6455f149c92c9a29c3774919632ded4f728d6b
# Deleted: sha256:86ac1c0970bf5ea1bf482edb0ba83dbc88fefb1ac431d3020f134691d749d9a6
# Deleted: sha256:5c4ac45a28f91f851b66af332a452cba25bd74a811f7e3884ed8723570ad6bc8
# Deleted: sha256:088f9eb16f16713e449903f7edb4016084de8234d73a45b1882cf29b1f753a5a
# Deleted: sha256:799115b9fdd1511e8af8a8a3c8b450d81aa842bbf3c9f88e9126d264b232c598
# Deleted: sha256:3549adbf614379d5c33ef0c5c6486a0d3f577ba3341f573be91b4ba1d8c60ce4
# Deleted: sha256:1154ba695078d29ea6c4e1adb55c463959cd77509adf09710e2315827d66271a

docker search ubuntu
# NAME                           DESCRIPTION                                  STARS  OFFICIAL AUTOMATED
# ubuntu                         Ubuntu is a Debian-based Linux operating sys 10749  [OK]
# dorowu/ubuntu-desktop-lxde-vnc Docker image to provide HTML5 VNC interface  414             [OK]
# rastasheep/ubuntu-sshd         Dockerized SSH service, built on top of offi 245             [OK]
# consol/ubuntu-xfce-vnc         Ubuntu container with "headless" VNC session 214             [OK]
# ubuntu-upstart                 Upstart is an event-based replacement for th 107    [OK]
# ansible/ubuntu14.04-ansible    Ubuntu 14.04 LTS with ansible                98              [OK]
# neurodebian                    NeuroDebian provides neuroscience research s 68     [OK]
# ubuntu-debootstrap             debootstrap --variant=minbase --components=m 44     [OK]

docker login
# Login with your Docker ID to push and pull images from Docker Hub. If you do not have a Docker ID, head over to https://hub.docker.com to create one.
# Username: ahmedhassanien
# Password:
# Login Succeeded

docker logout
# Removing login credentials for https://index.docker.io/v1/

nslookup index.docker.io
# Server:   192.168.1.22
# Address:  192.168.1.22#53

# Non-authoritative answer:
# index.docker.io  canonical name = elb-io.us-east-1.aws.dckr.io.
# elb-io.us-east-1.aws.dckr.io  canonical name = us-east-1-elbio-rm5bon1qaeo4-623296237.us-east-1.elb.amazonaws.com.
# Name:  us-east-1-elbio-rm5bon1qaeo4-623296237.us-east-1.elb.amazonaws.com
# Address: 52.3.104.67
# Name:  us-east-1-elbio-rm5bon1qaeo4-623296237.us-east-1.elb.amazonaws.com
# Address: 3.220.75.233
# Name:  us-east-1-elbio-rm5bon1qaeo4-623296237.us-east-1.elb.amazonaws.com
# Address: 34.193.164.221

docker run --rm httpd
# AH00558: httpd: Could not reliably determine the servers fully qualified domain name, using 172.17.0.2. Set the ServerName directive globally to suppress this message
# AH00558: httpd: Could not reliably determine the servers fully qualified domain name, using 172.17.0.2. Set the ServerName directive globally to suppress this message
# [Sat Apr 18 01:31:07.312598 2020] [mpm_event:notice] [pid 1:tid 140057600050304] AH00489: Apache/2.4.43 (Unix) configured -- resuming normal operations
# [Sat Apr 18 01:31:07.312772 2020] [core:notice] [pid 1:tid 140057600050304] AH00094: Command line: httpd -D FOREGROUND
docker run --rm -d httpd

docker run -d httpd
docker run -d httpd
docker run -d httpd
docker run --rm -d httpd
docker run --rm -d -p 80:80 httpd
docker run --rm -d -p 8080:80 httpd
docker port nervous_lamarr
# 80/tcp -> 0.0.0.0:8080

docker logs nervous_lamarr
# AH00558: httpd: Could not reliably determine the servers fully qualified domain name, using 172.17.0.6. Set the ServerName directive globally to suppress this message
# AH00558: httpd: Could not reliably determine the servers fully qualified domain name, using 172.17.0.6. Set the ServerName directive globally to suppress this message
# [Sat Apr 18 18:02:11.771692 2020] [mpm_event:notice] [pid 1:tid 139892595709056] AH00489: Apache/2.4.43 (Unix) configured -- resuming normal operations
# [Sat Apr 18 18:02:11.772107 2020] [core:notice] [pid 1:tid 139892595709056] AH00094: Command line: httpd -D FOREGROUND
# 172.17.0.1 - - [18/Apr/2020:18:03:02 +0000] "GET / HTTP/1.1" 200 45
# 172.17.0.1 - - [18/Apr/2020:18:03:02 +0000] "GET /favicon.ico HTTP/1.1" 404 196
docker logs -t nervous_lamarr
docker logs -f nervous_lamarr

docker restart nervous_lamarr
# nervous_lamarr
docker ps -a
# CONTAINER ID IMAGE COMMAND            CREATED        STATUS        PORTS                NAMES
# 89d48b6635c3 httpd "httpd-foreground" 36 minutes ago Up 3 seconds  0.0.0.0:8080->80/tcp nervous_lamarr
# 357e2aafd0d3 httpd "httpd-foreground" 40 minutes ago Up 40 minutes 0.0.0.0:80->80/tcp   gallant_lewin
docker restart -t 5 nervous_lamarr
# nervous_lamarr

docker stop cranky_chatterjee
# cranky_chatterjee
docker ps -a
# CONTAINER ID    IMAGE    COMMAND              CREATED           STATUS                      NAMES
# d16271db5d73    httpd    "httpd-foreground"   17 minutes ago    Exited (0) 3 seconds ago    cranky_chatterjee
docker rm cranky_chatterjee
# cranky_chatterjee
docker stop -t 5 cool_spence
# cool_spence
docker rm cool_spence
# cool_spence

docker kill gracious_jang
# gracious_jang
docker rm gracious_jang
# gracious_jang

docker stats nervous_lamarr
# CONTAINER ID    NAME              CPU %    MEM USAGE / LIMIT     MEM %    NET I/O            BLOCK I/O    PIDS
# 89d48b6635c3    nervous_lamarr    0.01%    6.109MiB / 1.943GiB   0.31%    9.29kB / 4.54kB    0B / 0B      82
docker stats -a
# CONTAINER ID    NAME              CPU %    MEM USAGE / LIMIT     MEM %    NET I/O            BLOCK I/O    PIDS
# 89d48b6635c3    nervous_lamarr    0.01%    6.109MiB / 1.943GiB   0.31%    9.29kB / 4.54kB    0B / 0B      82
# 357e2aafd0d3    gallant_lewin     0.02%    5.996MiB / 1.943GiB   0.30%    2.01kB / 558B      0B / 0B      82
docker stats -a --no-stream

docker top nervous_lamarr
# PID     USER    TIME    COMMAND
# 3634    root    0:00    httpd -DFOREGROUND
# 3668    bin     0:00    httpd -DFOREGROUND
# 3669    bin     0:00    httpd -DFOREGROUND
# 3670    bin     0:00    httpd -DFOREGROUND

docker pause nervous_lamarr
# nervous_lamarr
docker ps -a
# CONTAINER ID    IMAGE    COMMAND              CREATED           STATUS                   PORTS                  NAMES
# 89d48b6635c3    httpd    httpd-foreground   36 minutes ago    Up 36 minutes (Paused)   0.0.0.0:8080->80/tcp   nervous_lamarr
# 357e2aafd0d3    httpd    httpd-foreground   40 minutes ago    Up 40 minutes            0.0.0.0:80->80/tcp     gallant_lewin
docker unpause nervous_lamarr
# nervous_lamarr
docker ps -a
# CONTAINER ID    IMAGE    COMMAND              CREATED           STATUS          PORTS                  NAMES
# 89d48b6635c3    httpd    httpd-foreground   36 minutes ago    Up 36 minutes   0.0.0.0:8080->80/tcp   nervous_lamarr
# 357e2aafd0d3    httpd    httpd-foreground   40 minutes ago    Up 40 minutes   0.0.0.0:80->80/tcp     gallant_lewin

docker exec  nervous_lamarr /bin/ls
docker exec nervous_lamarr /bin/bash
docker ps -a
# CONTAINER ID    IMAGE    COMMAND              CREATED           STATUS          PORTS                  NAMES
# 89d48b6635c3    httpd    httpd-foreground   36 minutes ago    Up 36 minutes   0.0.0.0:8080->80/tcp   nervous_lamarr

docker exec -i nervous_lamarr /bin/bash
docker ps -a
# CONTAINER ID    IMAGE    COMMAND              CREATED           STATUS          PORTS                  NAMES
# 89d48b6635c3    httpd    "httpd-foreground"   36 minutes ago    Up 36 minutes   0.0.0.0:8080->80/tcp   nervous_lamarr

docker exec -i -t nervous_lamarr /bin/bash
# root@89d48b6635c3:/usr/local/apache2# cat htdocs/index.html
# <html><body><h1>It works!</h1></body></html>


docker ps -a




docker cp nervous_lamarr:/usr/local/apache2/htdocs/index.html .
vim index.html
docker cp index.html nervous_lamarr:/usr/local/apache2/htdocs/index.html

docker wait nervous_lamarr
# 0
docker stop nervous_lamarr
# nervous_lamarr

docker attach gallant_lewin


docker run --name mysql -e MYSQL_ROOT_PASSWORD=P@ssw0rd -d mysql:5.7
docker run --name mysql -p 3306:3306 -e MYSQL_ROOT_PASSWORD=P@ssw0rd \
       -d mysql:5.7
hostname
# hostname.lan
docker run -it --rm mysql:5.7 mysql -hhostname.lan -uroot -pP@ssw0rd
docker run -it --rm mysql:5.7 mysql -h"$(hostname)" -uroot -pP@ssw0rd

docker network create wp-network
docker network connect wp-network mysql
docker network inspect wp-network
docker run --name wordpress --network wp-network -p 8080:80 \
       -e WORDPRESS_DB_HOST=mysql -e WORDPRESS_DB_NAME=wp_db \
       -e WORDPRESS_DB_USER=root -e WORDPRESS_DB_PASSWORD=P@ssw0rd \
       -d wordpress
docker network inspect wp-network
docker network rm wp-network
