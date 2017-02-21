FROM alpine:edge
MAINTAINER Daniel Guerra
RUN apk -U add tor torsocks
EXPOSE 9050 53/udp
ADD ./start.sh /bin/start.sh
ADD ./torrc /etc/tor/torrc
CMD /bin/start.sh
