# by pts@fazekas.hu at Wed Oct 11 14:56:39 CEST 2017
#
# Build:
#
#   $ docker build --tag pts/busybox1 context_busybox1
#
# Run:
#
#   $ docker run -v "$PWD:/workdir" -u "$UID:$GID" -it pts/busybox1
#
#
# Separate context directory so that only a few bytes have to be sent to
# the Docker daemon.
#

FROM scratch
MAINTAINER pts@fazekas.hu
LABEL version=1
CMD ["sh"]
ADD busybox /bin/
RUN ["busybox", "ln", "-s", "/", "/usr"]
RUN ["busybox", "--install", "-s"]
WORKDIR /workdir
