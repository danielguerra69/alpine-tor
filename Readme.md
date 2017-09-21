#### Alpine tor server

### Image Size

* [![Latest](https://badge.imagelayers.io/danielguerra/alpine-tor.svg)](https://imagelayers.io/?images=danielguerra/alpine-tor:latest 'latest') danielguerra/alpine-tor

### Usage

Start tor server

```bash
docker run -d -p 9050:9050  -p 53:53/udp --name torserver danielguerra/alpine-tor
```
& check
```bash
docker logs torserver
```

Set your browser proxy settings or system-wide ,to SOCKS(5) proxy : dockerhost 9050
