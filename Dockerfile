FROM composer

WORKDIR /app
RUN docker-php-ext-install mysqli pdo pdo_mysql

COPY ./ .
RUN composer install --no-scripts

CMD ["php", "artisan", "serve", "--host", "0.0.0.0"]