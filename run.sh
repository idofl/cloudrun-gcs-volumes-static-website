#!/usr/bin/env bash
set -eo pipefail

# Start the application
nginx '-g' 'daemon off;' &

# Exit immediately when one of the background processes terminate.
wait -n
