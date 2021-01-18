#!/usr/bin/env bash
set -eu

echo "Container start"

ruby -v
rm -f tmp/pids/server.pid

/lambda-entrypoint.sh "$@"

echo "Container finished"
