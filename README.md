# Aether

### Running in existing X11
```sh
$ docker build -t aether -f Dockerfile .
$ docker run -ti --net=host  -v /tmp/.X11-unix/:/tmp/.X11-unix/ -e DISPLAY=unix$DISPLAY aether
```

### Running inside a X11 container
```sh
$ docker run -d -t --privileged --net=host konstruktoid/x11
<RDP to Docker container>
$ docker build -t aether -f Dockerfile .
$ docker run -ti --net=host  -v /tmp/.X11-unix/:/tmp/.X11-unix/ -e DISPLAY=unix$DISPLAY aether
```
