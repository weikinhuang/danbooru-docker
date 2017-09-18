#!/usr/bin/with-contenv bash

set -euo pipefail
IFS=$'\n\t'

# create data directories
s6-setuidgid danbooru mkdir -p \
    /var/www/danbooru2/shared/public/data/preview \
    /var/www/danbooru2/shared/public/data/sample

chown danbooru:danbooru /var/www/danbooru2/shared/public/data || true
chown danbooru:danbooru /var/www/danbooru2/shared/public/data/preview || true
chown danbooru:danbooru /var/www/danbooru2/shared/public/data/sample || true
