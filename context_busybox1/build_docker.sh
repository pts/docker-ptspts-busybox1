#! /bin/bash --
# by pts@fazekas.hu at Wed Oct 11 15:24:03 CEST 2017
#

set -ex
cd "${0%/*}"
# Doing these chmods early makes the image half as large.
chmod 755 busybox
# Reads Dockerfile.
docker build -t ptspts/busybox1 .

: docker push ptspts/busybox1  

: build_docker.sh OK.
