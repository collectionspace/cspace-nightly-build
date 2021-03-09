#!/bin/bash

echo "Setting up database"
/create_db.sh

echo "Starting collectionspace"
/start.sh &

echo "Waiting for collectionspace to startup"
until $(curl --output /dev/null --silent --head --fail http://localhost:8180/cspace/core/login); do
  printf "."
  sleep 10
done

echo "Running tests"
cd /services && mvn test
