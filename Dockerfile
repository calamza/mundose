FROM php:7.1.2-apache
#FROM httpd:latest

RUN apt-get update
#RUN apt-get install -y php
#RUN apt install libapache2-mod-php
#RUN apt install php libapache2-mod-php php-mysql -y
#RUN a2enmod php
#WORKDIR /usr/local/apache2/htdocs

COPY index.php /var/www/html
COPY phpinfo.php /var/www/html

EXPOSE 80
#CMD [ "httpd-foreground" ]
#CMD [ "php", "index.php" ]