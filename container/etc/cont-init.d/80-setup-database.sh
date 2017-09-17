#!/usr/bin/with-contenv bash

set -euo pipefail
IFS=$'\n\t'

# install database
cd /var/www/danbooru2/shared
export RAILS_ENV=production
export HOME=/var/www/danbooru2/shared/tmp
export TMPDIR=/var/www/danbooru2/shared/tmp
export TMP=/var/www/danbooru2/shared/tmp
export TEMP=/var/www/danbooru2/shared/tmp
s6-setuidgid danbooru bundle exec rake db:create db:migrate
