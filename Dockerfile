FROM php:7.0-apache
COPY *.php /var/www/html
# Apache listens on port 80 by default. We want to change this to port 8080.
RUN sed -i "s/80/8080/g" /etc/apache2/sites-available/000-default.conf /etc/apache2/ports.conf
EXPOSE 80