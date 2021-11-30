#!/bin/bash

echo "Starting PHP-FPM..."
/usr/sbin/php-fpm7.4 --fpm-config /home/container/php-fpm/php-fpm.conf --daemonize

echo "Starting Apache..."
/usr/sbin/apache2 -c /home/container/apache2/apache2.conf

echo "Starting Website..."
