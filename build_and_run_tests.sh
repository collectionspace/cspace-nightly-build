#!/bin/bash

set -e
BASE_DIR=$PWD
cd $BASE_DIR/docker/db
docker build -t collectionspace:db .

cd $BASE_DIR/docker/dev
docker-compose up -d db
docker-compose build --force-rm --no-cache
docker-compose run --rm app /run_tests.sh
