#!/usr/bin/with-contenv bash

set -euo pipefail
IFS=$'\n\t'

# forward request and error logs to docker log collector
ln -sf /dev/null /var/log/nginx/access.log \
    && ln -sf /dev/null /var/log/nginx/error.log
#ln -sf /dev/stdout /var/log/nginx/access.log \
#    && ln -sf /dev/stderr /var/log/nginx/error.log
