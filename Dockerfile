# Use the official PHP image with PHP 8.3 FPM
FROM php:8.3-fpm

# Install necessary PHP extensions
RUN docker-php-ext-install \
    bcmath \
    bz2 \
    calendar \
    ctype \
    curl \
    dom \
    exif \
    fileinfo \
    filter \
    ftp \
    gd \
    gettext \
    hash \
    iconv \
    intl \
    json \
    ldap \
    mbstring \
    mysqli \
    opcache \
    openssl \
    pcntl \
    pcre \
    pdo \
    pdo_mysql \
    pdo_sqlite \
    phar \
    posix \
    readline \
    session \
    shmop \
    simplexml \
    sockets \
    spl \
    sqlite3 \
    sysvmsg \
    sysvsem \
    sysvshm \
    tokenizer \
    wddx \
    xml \
    xmlreader \
    xmlwriter \
    xsl \
    zip \
    zlib

# Set the working directory inside the container
WORKDIR /var/www

# Copy the application code to the container
COPY . /var/www

# Expose the port the app runs on
EXPOSE 9093

# Start PHP-FPM server
CMD ["php-fpm"]