FROM alpine:edge
MAINTAINER Daniel Guerra
RUN echo "http://nl.alpinelinux.org/alpine/v3.3/main" >> /etc/apk/repositories \
&& echo "@testing http://nl.alpinelinux.org/alpine/edge/testing" >> /etc/apk/repositories \
&& apk update \
&& apk add tor@testing \
&& rm /var/cache/apk/*
EXPOSE 9050 53
ADD ./start.sh /bin/start.sh
ADD ./torrc /etc/torrc
CMD /bin/start.sh
