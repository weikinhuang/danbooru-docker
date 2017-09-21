#!/usr/bin/with-contenv bash

set -euo pipefail
IFS=$'\n\t'

# create data directories
mkdir -p /var/www/danbooru2/shared/public/data
chown danbooru:danbooru /var/www/danbooru2/shared/public/data || true

s6-setuidgid danbooru mkdir -p \
    /var/www/danbooru2/shared/public/data/preview \
    /var/www/danbooru2/shared/public/data/sample || true

chown danbooru:danbooru /var/www/danbooru2/shared/public/data/preview || true
chown danbooru:danbooru /var/www/danbooru2/shared/public/data/sample || true
