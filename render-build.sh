#!/usr/bin/env bash
# exit on error
# exit on error
set -o errexit
yarn install
bundle install
bundle exec rake assets:precompile
bundle exec rake assets:clean
DISABLE_DATABASE_ENVIRONMENT_CHECK=1 bundle exec rake db:migrate:reset
# bundle exec rake db:migrate