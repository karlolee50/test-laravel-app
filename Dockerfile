FROM composer

WORKDIR /var/www/html

COPY ./ .
RUN composer install
RUN php artisan key:generate

CMD ["php", "artisan", "serve", "--host", "0.0.0.0"]