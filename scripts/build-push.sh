#!/usr/bin/env bash

set -e
set -x

echo "$DOCKER_PASSWORD" | docker login -u "$DOCKER_USERNAME" --password-stdin

docker build -t tiagolo/node-frontend:10 .

docker build -t tiagolo/node-frontend:latest .

docker push tiagolo/node-frontend:10

docker push tiagolo/node-frontend:latest
