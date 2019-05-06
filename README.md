# Aether

NOTE: This version of Aether (V1) is deprecated.
Currently waiting for a non-snap version.
[https://meta.getaether.net/t/any-other-way-to-install-it-on-linux-besides-snap/184](Any other way to install it on linux besides snap?).

[![](https://images.microbadger.com/badges/image/konstruktoid/aether.svg)](https://microbadger.com/images/konstruktoid/aether "Aether")

```
Aether is a free app that you use to read, write in, and create community
moderated, distributed, and anonymous forums, an "anonymous reddit without servers".
```

[https://getaether.net/](https://getaether.net/)

## Automated build

Automated build available with `docker pull konstruktoid/aether`.

## Running in existing X11

```sh
docker build --no-cache -t aether -f Dockerfile .
docker run -ti --net=host -v /tmp/.X11-unix/:/tmp/.X11-unix/ -e DISPLAY=unix$DISPLAY aether
```

## Running inside a X11 container

```sh
docker run -d -t --privileged --net=host konstruktoid/x11
<RDP to X11 Docker container>
docker build -t aether -f Dockerfile .
docker run -ti --net=host -v /tmp/.X11-unix/:/tmp/.X11-unix/ -e DISPLAY=unix$DISPLAY aether
```

![](https://raw.githubusercontent.com/konstruktoid/Aether_Build/master/x11_aether.png)
