FROM php:7.0-apache
COPY *.php /var/www/html
RUN sed -i "s/80/8080/g" /etc/apache2/sites-available/000-default.conf /etc/apache2/ports.conf
EXPOSE 80