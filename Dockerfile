FROM php:8.0-apache

# Set the working directory
WORKDIR /app

# Copy the source code
COPY . .

# Install dependencies
RUN composer install

# Expose the port
EXPOSE 3000

# Start the application
CMD ["php", "artisan","serve","--host=0.0.0.0","--port=3000" ]

