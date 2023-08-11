echo "========docker-build.sh========";

docker image rm --force web-server-build;
docker rm --force web-server;
docker build -t web-server-build .;
docker run -p 8888:8000 --name web-server web-server-build;