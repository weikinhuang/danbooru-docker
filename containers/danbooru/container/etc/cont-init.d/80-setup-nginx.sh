#!/usr/bin/with-contenv bash

set -euo pipefail
IFS=$'\n\t'

# create nginx.conf
cat /var/www/templates/nginx.conf \
    | sed "s/__SERVER_NAME__/${SERVER_NAME}/g" \
    > /etc/nginx/nginx.conf
