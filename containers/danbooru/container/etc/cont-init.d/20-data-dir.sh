#!/usr/bin/with-contenv bash

set -euo pipefail
IFS=$'\n\t'

# create data directories
mkdir -p /var/www/danbooru2/shared/public/data/preview
mkdir -p /var/www/danbooru2/shared/public/data/sample

mkdir -p /var/www/danbooru2/shared/log
mkdir -p /var/www/danbooru2/shared/tmp
mkdir -p /var/www/danbooru2/shared/tmp/pids

chown danbooru:danbooru /var/www/danbooru2/shared/public/data
chown danbooru:danbooru /var/www/danbooru2/shared/public/data/preview
chown danbooru:danbooru /var/www/danbooru2/shared/public/data/sample

chown -R danbooru:danbooru /var/www/danbooru2/shared/log
chown -R danbooru:danbooru /var/www/danbooru2/shared/tmp
