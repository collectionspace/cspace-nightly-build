#!/bin/bash

set -e
git clone https://github.com/collectionspace/qa-automation
cp qa-automation.yml qa-automation/config/settings.yml
cd qa-automation
bundle install
bundle exec rake cspace
