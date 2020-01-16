FROM php:5.6-fpm

LABEL maintainer="Eduardo Zinhani <ezinhani@gmail.com>"

ENV DEBIAN_FRONTEND noninteractive

RUN set -xe && \
  apt-get update && \
  apt-get upgrade -y && \
  apt-get install -y --no-install-recommends \
    nano \
    curl \
    wget \
    libmemcached-dev \
    libz-dev \
    libpq-dev \
    libjpeg-dev \
    libpng-dev \
    libfreetype6-dev \
    libssl-dev \
    libmcrypt-dev

RUN docker-php-ext-install mcrypt

RUN docker-php-ext-install mysqli \
    && docker-php-ext-install pdo_mysql

RUN docker-php-ext-install pdo_pgsql

RUN docker-php-ext-install gd && \
    docker-php-ext-configure gd \
        --enable-gd-native-ttf \
        --with-jpeg-dir=/usr/lib \
        --with-freetype-dir=/usr/include/freetype2 && \
    docker-php-ext-install gd