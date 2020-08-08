#!/bin/bash

DOCKER_IMAGE=express42/otus-homeworks:0.7.1

docker network create hw-test-net-lint
docker run -d -v $(pwd):/srv -v /var/run/docker.sock:/tmp/docker.sock \
    -e DOCKER_HOST=unix:///tmp/docker.sock --cap-add=NET_ADMIN --privileged \
    --device /dev/net/tun --name hw-test-lint --network hw-test-net-lint $DOCKER_IMAGE

docker exec hw-test-lint bash ./tests/test.sh
