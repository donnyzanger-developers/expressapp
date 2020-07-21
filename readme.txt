# Initial Deployment
install docker
https://docs.docker.com/engine/install/ubuntu/#install-using-the-repository

install and configure apache port forwarding:
port forwarding to 3000 from 80:
add these two lines to existing 
/etc/apache2/sites-available/000-default.conf
sites-enabled follows sites-available, sites-available seems to be the important one
<virtualHost *:80>
        ServerAdmin webmaster@localhost
        DocumentRoot /var/www/html
        ErrorLog ${APACHE_LOG_DIR}/error.log
        CustomLog ${APACHE_LOG_DIR}/access.log combined
        ProxyPass / http://127.0.0.1:3000/ <------------------------------ new
        ProxyPassReverse / http://127.0.0.1:3000/ <----------------------- new 
</virtualHost>
now enable proxy mode also
sudo a2enmod ssl
sudo a2enmod proxy
sudo a2enmod proxy_balancer
sudo a2enmod proxy_http
sudo service apache2 restart