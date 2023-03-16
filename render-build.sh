#!/usr/bin/env bash
# exit on error
# exit on error
set -o errexit

bundle install
bundle exec rake db:migrate
bundle exec rake assets:precompile
bundle exec rake assets:clean
