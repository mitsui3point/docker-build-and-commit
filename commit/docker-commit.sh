echo "========docker-commit.sh========";

docker rm --force web-server;
docker image rm --force web-server-commit;
docker run -p 8888:8000 --name web-server -it ubuntu:20.04;
docker commit web-server web-server-commit;
docker images;