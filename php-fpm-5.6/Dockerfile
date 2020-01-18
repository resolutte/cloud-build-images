FROM debian:8

LABEL maintainer="Eduardo Zinhani <ezinhani@gmail.com>"

ENV DEBIAN_FRONTEND noninteractive

# Install "PHP Extentions", "libraries", "Software's"
RUN apt-get update && \
    apt-get upgrade -y && \
    apt-get install -y --allow-downgrades --allow-remove-essential \
        --allow-change-held-packages \
        php5.6-cgi \
        php5.6-gmp \
        php5.6-mongo \
        php5.6-cli \
        php5.6-common \
        php5.6-curl \
        php5.6-intl \
        php5.6-json \
        php5.6-xml \
        php5.6-mbstring \
        php5.6-mcrypt \
        php5.6-mysql \
        php5.6-pgsql \
        php5.6-sqlite \
        php5.6-sqlite3 \
        php5.6-zip \
        php5.6-bcmath \
        php5.6-memcached \
        php5.6-gd \
        php5.6-dev \
        pkg-config \
        libcurl4-openssl-dev \
        libedit-dev \
        libssl-dev \
        libxml2-dev \
        xz-utils \
        libsqlite3-dev \
        sqlite3 \
        git \
        curl \
        wget \
        vim \
        nano \
        postgresql-client \
        php-pear \
    && apt-get clean

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

RUN apt-get update && apt-get install -y locales && rm -rf /var/lib/apt/lists/* \
    && localedef -i pt_BR -c -f UTF-8 -A /usr/share/locale/locale.alias pt_BR.UTF-8

RUN locale-gen pt_BR.UTF-8
ENV LANGUAGE=pt_BR.UTF-8
ENV LC_ALL=pt_BR.UTF-8
ENV LC_CTYPE=pt_BR.UTF-8
ENV LANG=pt_BR.UTF-8
ENV TERM xterm

# Install composer and add its bin to the PATH.
RUN curl -s http://getcomposer.org/installer | php && \
    echo "export PATH=${PATH}:/var/www/vendor/bin" >> ~/.bashrc && \
    mv composer.phar /usr/local/bin/composer

# Source the bash
RUN . ~/.bashrc