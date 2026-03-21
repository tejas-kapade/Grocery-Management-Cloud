FROM php:8.2-apache

RUN docker-php-ext-install mysqli pdo pdo_mysql

COPY Grocery%20Management/Grocery_Management/ /var/www/html/

EXPOSE 80
