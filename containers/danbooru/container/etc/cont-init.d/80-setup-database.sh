#!/usr/bin/with-contenv bash

set -euo pipefail
IFS=$'\n\t'

# install database
cd /var/www/danbooru2/shared

# create database.yml
cat /var/www/templates/database.yml \
    | sed "s/__POSTGRES_USERNAME__/${POSTGRES_USERNAME}/g" \
    | sed "s/__POSTGRES_PASSWORD__/${POSTGRES_PASSWORD}/g" \
    | sed "s/__POSTGRES_HOSTNAME__/${POSTGRES_HOSTNAME}/g" \
    | sed "s/__POSTGRES_DATABASE__/${POSTGRES_DATABASE}/g" \
    > /var/www/danbooru2/shared/config/database.yml

# ruby env
export RAILS_ENV=production
export HOME=/var/www/danbooru2/shared/tmp
export TMPDIR=/var/www/danbooru2/shared/tmp
export TMP=/var/www/danbooru2/shared/tmp
export TEMP=/var/www/danbooru2/shared/tmp

s6-setuidgid danbooru bundle exec rake db:create db:migrate
