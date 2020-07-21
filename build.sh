docker build . --tag back2
docker run --publish 3000:3000 --detach back2

