FROM php:7.4-fpm

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
    libjpeg62-turbo-dev \
  && rm -rf /var/lib/apt/lists/*

RUN docker-php-ext-install pdo_mysql \
  && docker-php-ext-install pdo_pgsql \
  && docker-php-ext-configure gd \
    --prefix=/usr \
    --with-jpeg \
    --with-freetype && \
    docker-php-ext-install gd