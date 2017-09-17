#!/usr/bin/with-contenv bash

set -euo pipefail
IFS=$'\n\t'

# clean up pid files
rm -f /var/www/danbooru2/shared/tmp/pids/*.pid
