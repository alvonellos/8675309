# Use the official PHP image with PHP 8.3 FPM
FROM php:8.3-fpm

# Install necessary PHP extension

# Set the working directory inside the container
WORKDIR /var/www

# Copy the application code to the container
COPY . /var/www

# Expose the port the app runs on
EXPOSE 9093

# Start PHP-FPM server
CMD ["php-fpm"]