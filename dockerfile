
FROM php:7.4-apache
COPY index.php /var/www/html/

RUN apt-get update
RUN chown -R www-data:www-data /var/www/
RUN chmod -R o-wx /var/www/
RUN docker-php-ext-install mysqli && docker-php-ext-enable mysqli

EXPOSE 80
