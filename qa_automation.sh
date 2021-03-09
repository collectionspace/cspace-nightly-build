#!/bin/bash

set -e
git clone https://github.com/collectionspace/qa-automation
cd qa-automation
bundle install
bundle exec rake cspace
