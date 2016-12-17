FROM alpine:edge
MAINTAINER Daniel Guerra
RUN apk -U add tor \
&& rm -rf /var/cache/*
EXPOSE 9050 53
ADD ./start.sh /bin/start.sh
ADD ./torrc /etc/torrc
CMD /bin/start.sh
