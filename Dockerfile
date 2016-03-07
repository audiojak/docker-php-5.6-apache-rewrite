FROM php:5.6-apache

MAINTAINER John Kennedy

RUN a2enmod rewrite

ENV SITEPATH /

RUN   sed -i "s|DocumentRoot\ \/var\/www\/html|DocumentRoot\ \/var\/www\/html\/$SITEPATH|g" /etc/apache2/apache2.conf
