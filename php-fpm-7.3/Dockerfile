FROM php:7.3-fpm

LABEL maintainer="Eduardo Zinhani <ezinhani@gmail.com>"

ENV DEBIAN_FRONTEND noninteractive

RUN set -xe && \
  apt-get update && \
  apt-get upgrade -y && \
  apt-get install -y --no-install-recommends \
    nano \
    curl \
    wget \
    less \
    cron \
    git \
    unzip \
    libzip-dev \
    libmemcached-dev \
    libz-dev \
    libpq-dev \
    libjpeg-dev \
    libpng-dev \
    libfreetype6-dev \
    libssl-dev \
    libmcrypt-dev \
    libjpeg-turbo-dev \
    libjpeg62-turbo-dev \
    freetype-dev \
  && rm -rf /var/lib/apt/lists/*

RUN docker-php-ext-install pdo_mysql \
  && docker-php-ext-install pdo_pgsql \
  && docker-php-ext-configure gd \
    --with-jpeg-dir=/usr/lib \
    --with-freetype-dir=/usr/include/freetype2 && \
    docker-php-ext-install gd