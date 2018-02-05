#!/bin/sh
set -e

echo "The Dockerfile ENTRYPOINT has been executed!"

export WEB2_COUNTER_MSG="${WEB2_COUNTER_MSG:-carbon based life forms have sensed this website}"

exec "$@"
