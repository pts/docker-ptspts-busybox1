# by pts@fazekas.hu at Wed Oct 11 14:56:39 CEST 2017
#
# Run:
#
#   $ docker run -v "$PWD:/workdir" -u "$(id -u):$(id -g)" --rm -it ptspts/busybox1
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
#RUN ["busybox", "chmod", "755", "/bin/busybox"]
RUN ["busybox", "ln", "-s", "/", "/usr"]
RUN ["busybox", "--install", "-s"]
WORKDIR /workdir
