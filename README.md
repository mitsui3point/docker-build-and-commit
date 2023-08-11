# docker commit

```bash
# docker container run
# $ docker run --name web-server -it ubuntu:latest
$ docker run --name web-server -it ubuntu:20.04
```

```bash
# docker container(web-server) commit to make images(web-server-commit)
$ docker commit web-server web-server-commit
```

```bash
# image 생성 확인
$ docker images
```

```bash
# Container cli
$root@123435352d: apt update;               # RUN
$root@123435352d: apt install python3;      # RUN
$root@123435352d: mkdir -p /var/www/html;   # WORKDIR
$root@123435352d: cd /var/www/html;         # WORKDIR
$root@123435352d: echo "Hello, <strong>Docker</strong>" > index.html    # /var/www/html/index.html 생성
$root@123435352d: python3 -u -m http.server # python3 web server 실행
```

# docker build

```Dockerfile
# Dockerfile
FROM ubuntu:20.04                               # container image
RUN apt update && apt intstall -y python3       # container run 이후 즉시 실행 command
WORKDIR /var/www/html                           # container cli 실행 기본 위치
# RUN echo "Hello, <strong>Docker</strong>" > index.html    # /var/www/html/index.html 생성
# COPY ["index.html", "."]                      # index.html host -> container copy
CMD [ "python3", "-u", "-m", "http.server" ]    # python3 -u -m http.server 명령어 실행
```

```bash
$ docker build -t web-server-build .;
$ docker rm --force web-server;
$ docker run -p 8888:8000 --name web-server web-server-build;
```

## RUN vs CMD
RUN : 실행시 build 되는 image 에 적용되는 command  
CMD : 실행시 build 된 image 로 만든 container 에 적용되는 command
