#!/usr/bin/env bash
# exit on error
set -o errexit

web: bundle exec puma -C config/puma.rb
release: bundle exec rake db:migrate