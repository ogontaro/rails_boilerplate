#!/bin/bash

echo "Start App"

ruby -v
rm -f tmp/pids/server.pid
bundle install -j4 --quiet
dockerize -wait tcp://db:3306 -timeout 30s
bundle exec rails db:create db:migrate

exec "$@"

echo "Finish App"
