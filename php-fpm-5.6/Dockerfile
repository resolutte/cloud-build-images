FROM debian:jessie

LABEL maintainer="Resolutte <suporte@resolutte.app>"

ENV DEBIAN_FRONTEND noninteractive

RUN apt-get update; \
    apt-get --yes upgrade; \
    apt-get install -y -q --no-install-recommends \
            less \
            nano \
            curl \
            zip \
            wget \
            cron \
            git \
            unzip \
            imagemagick \
            php5-fpm \
            php5-curl \
            php5-mysql \
            php5-gd \
    		php5-imagick \
            php5-mcrypt \
            php5-intl \
            php5-mongo \
            php5-redis \
            php5-dev \
            php5-gmp \
            php-pear; \
    apt-get clean