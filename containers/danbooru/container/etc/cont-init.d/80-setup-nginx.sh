#!/usr/bin/with-contenv bash

set -euo pipefail
IFS=$'\n\t'

# create nginx.conf
cat /var/www/templates/nginx.conf \
    | sed "s/__SERVER_NAME__/${SERVER_NAME}/g" \
    | sed "s/__SERVER_HOST__/${SERVER_HOST:-\$host}/g" \
    | sed "s/__SERVER_PORT__/${SERVER_PORT:-\$server_port}/g" \
    > /etc/nginx/nginx.conf
