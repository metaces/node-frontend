#!/usr/bin/env bash

set -e
set -x

echo "$DOCKER_PASSWORD" | docker login -u "$DOCKER_USERNAME" --password-stdin

docker build -t metaces/node-frontend:10 .

docker build -t metaces/node-frontend:latest .

docker push metaces/node-frontend:10

docker push metaces/node-frontend:latest
