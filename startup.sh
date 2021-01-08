#!/usr/bin/env bash

docker rm -f ubuntu > /dev/null 2>&1 || true

docker run \
  -it \
  --name ubuntu \
  --network host \
  -v $PWD/../selenoid-images:/workspace/selenoid-images:rw \
  -v $PWD/../selenoid-container-tests:/workspace/selenoid-container-tests:rw \
  -v /tmp:/tmp:rw \
  -v /var/run/docker.sock:/var/run/docker.sock \
  -v ~/.m2:/root/.m2/ \
  -w /workspace/selenoid-images \
  ubuntu-for-selenoid
