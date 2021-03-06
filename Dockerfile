# A basic Apache+PHP Image 
FROM ubuntu:12.04

MAINTAINER Nicola Kabar version: 0.1

RUN apt-get update && apt-get install -y apache2

RUN apt-get install -y php5

ENV APACHE_RUN_USER www-data
ENV APACHE_RUN_GROUP www-data
ENV APACHE_LOG_DIR /var/log/apache2

RUN rm -rf /var/www/*
ADD index.php /var/www/

EXPOSE 80

CMD ["/usr/sbin/apache2", "-D", "FOREGROUND"]
