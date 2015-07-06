# Aether
"Aether is a free app that you use to read, write in, and create community 
moderated, distributed, and anonymous forums, an “anonymous reddit without servers."  
http://getaether.net/

### Automated build
Automated build available with `docker pull konstruktoid/aether`.  

### Running in existing X11
```sh
$ docker build -t aether -f Dockerfile .
$ docker run -ti --net=host -v /tmp/.X11-unix/:/tmp/.X11-unix/ -e DISPLAY=unix$DISPLAY aether
```

### Running inside a X11 container
```sh
$ docker run -d -t --privileged --net=host konstruktoid/x11
<RDP to X11 Docker container>
$ docker build -t aether -f Dockerfile .
$ docker run -ti --net=host -v /tmp/.X11-unix/:/tmp/.X11-unix/ -e DISPLAY=unix$DISPLAY aether
```
