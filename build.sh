sudo docker build . --tag back2
sudo docker run --publish 3000:3000 --detach back2

sudo docker ps
sudo docker stop feca94bd374f

