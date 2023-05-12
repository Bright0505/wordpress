FROM wordpress:6.2.0-php8.2-fpm-alpine
ENV php_conf "$PHP_INI_DIR/php.ini"

RUN mv "$PHP_INI_DIR/php.ini-production" ${php_conf}
RUN sed -i -e "s/;cgi.fix_pathinfo=1/cgi.fix_pathinfo=0/g" ${php_conf} \
    && sed -i -e "s/memory_limit\s*=\s*.*/memory_limit = 128M/g" ${php_conf} \
    && sed -i -e "s/upload_max_filesize\s*=\s*2M/upload_max_filesize = 20M/g" ${php_conf} \
    && sed -i -e "s/post_max_size\s*=\s*8M/post_max_size = 20M/g" ${php_conf} \
    && sed -i -e "s/variables_order = \"GPCS\"/variables_order = \"EGPCS\"/g" ${php_conf}

ENTRYPOINT ["docker-entrypoint.sh"]
CMD ["php-fpm"]
