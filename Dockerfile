FROM php:5.6-apache

MAINTAINER John Kennedy

RUN a2enmod rewrite

RUN ln -s /var/www/$APPPATH /var/www/html
