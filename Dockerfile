FROM wordpress:6.2.0-php8.2-fpm-alpine

ENTRYPOINT ["docker-entrypoint.sh"]
CMD ["php-fpm"]
