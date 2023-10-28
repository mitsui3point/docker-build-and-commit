[이고잉님 강의 링크](https://www.youtube.com/watch?v=RMNOQXs-f68&t=2s)

# $ docker-commit containers

```
            image(ubuntu)
                ↓
               run
                ↓
            container(add git; my-ubuntu)
                ↓
              commit
                ↓
            image(userimage)
                ↓
    ↓-----------↓-----------↓
   run         run         run
    ↓           ↓           ↓
container   container   container
```

## ubuntu image pull

```bash
$ docker images
$ docker image rm --force ubuntu
$ docker pull ubuntu
```

## ubuntu container run

```bash
$ docker run --name my-ubuntu ubuntu
```

## my-ubuntu container apt get git

```bash
$container apt update;
$container apt install git;
```

## commit container to make image

```bash
$ docker commit my-ubuntu sample-commit:ubuntu-git
```

## maked image run another containers

```bash
$ docker run -it --name nodejs sample-commit:ubuntu-git
$ docker run -it --name python sample-commit:ubuntu-git
```

```bash
# nodejs container
$container apt update && apt install -y nodejs
$container node -v # v12.22.9
$container python3 --version # bash: python3: command not found

# python container
$container apt update && apt install -y python3
$container python3 --version # Python 3.10.12
$container node -v # bash: node: command not found
```
