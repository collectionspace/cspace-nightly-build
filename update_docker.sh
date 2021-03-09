#!/bin/bash

set -e
DEPLOYMENT_DOCKER_PATH=${1:-./../cspace-deployment/docker}
cp -r $DEPLOYMENT_DOCKER_PATH/db/* ./docker/db/
cp -r $DEPLOYMENT_DOCKER_PATH/dev/* ./docker/dev/
rm docker/dev/buildspec.yml
rm docker/dev/docker-compose-buildspec.yml
rm docker/dev/make-tomcat-cspace-tarball.sh
