#!/usr/bin/env bash
# exit on error
# exit on error
set -o errexit
yarn install
yarn build
bundle install
bundle exec rake assets:precompile
bundle exec rake assets:clean
bundle exec rake db:migrate