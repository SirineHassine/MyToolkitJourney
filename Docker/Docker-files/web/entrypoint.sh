#!/bin/sh

if [ "$ENABLE_SSL" = "true" ]; then
    echo "Using SSL configuration"
    cp /etc/nginx/conf.d/myresumeapp_ssl.conf /etc/nginx/conf.d/default.conf
else
    echo "Using non-SSL configuration"
    cp /etc/nginx/conf.d/myresumeapp.conf /etc/nginx/conf.d/default.conf
fi

# Démarre Nginx
nginx -g "daemon off;"