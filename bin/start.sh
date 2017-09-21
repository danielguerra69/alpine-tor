#! /bin/sh
#add random nickname
echo "Nickname $(head -c 16 /dev/urandom  | sha1sum | cut -c1-16)">>/etc/tor/torrc
# start tor
/usr/bin/tor -f /etc/tor/torrc
