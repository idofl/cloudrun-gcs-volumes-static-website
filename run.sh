#!/usr/bin/env bash
set -eo pipefail

envsubst < /etc/nginx/conf.d/default.conf.template > /etc/nginx/conf.d/default.conf

# Start the application
nginx '-g' 'daemon off;' &

# Exit immediately when one of the background processes terminate.
wait -n
