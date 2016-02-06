#### Alpine tor server

### Image Size

* [![Latest](https://badge.imagelayers.io/danielguerra/alpine-tor.svg)](https://imagelayers.io/?images=danielguerra/alpine-tor:latest 'latest') danielguerra/alpine-tor

### Usage

Start tor server / proxy

```bash
docker run -d -p 9050:9050  -p 9053:9053/udp --name torproxy danielguerra/alpine-tor
```
& check
```bash
docker logs torproxy
```

Set your browser proxy settings or sytem-wide ,to SOCKS(5) proxy : dockerhost 9050
