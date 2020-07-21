
# INITIAL DEPLOYMENT
# instructions to run seed.js
# $ mongo
# > use expressapp_prod
# > load("seed.js")
# use sudo in production
# configure mongo on ubuntu for docker
# /etc/mongod.conf on ubuntu /usr/local/etc/mongod.conf on macos
# change the bindIp from 127.0.0.1 to 0.0.0.0

sudo docker build . --tag back2
sudo docker run --publish 3000:3000 --detach back2

# SUBSEQUENT DEPLOYMENTS
# to stop container
sudo docker ps
sudo docker stop feca94bd374f
sudo docker build . --tag back2
sudo docker run --publish 3000:3000 --detach back2

# TROUBLESHOOTING
# sudo docker logs bf7838d8ac04

