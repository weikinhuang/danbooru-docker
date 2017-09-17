#!/usr/bin/with-contenv bash

set -euo pipefail
IFS=$'\n\t'

# setup initialization hooks
for f in /docker-entrypoint.d/*.sh; do
    if [ -e "${f}" ]; then
        echo "$0: running $f"
        . "$f"
    fi
done
