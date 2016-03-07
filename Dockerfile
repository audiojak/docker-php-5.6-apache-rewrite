FROM php:5.6-apache

MAINTAINER John Kennedy

RUN a2enmod rewrite

RUN   sed -i "s|DocumentRoot\ \/var\/www\/html|DocumentRoot\ \/var\/www\/html\/${SITEPATH}|g" /etc/apache2/apache2.conf

RUN echo "#${SITEPATH}" >> /etc/apache2/apache2.conf

RUN ["sh", "-c", "echo #${SITEPATH} >> /etc/apache2/apache2.conf"]
