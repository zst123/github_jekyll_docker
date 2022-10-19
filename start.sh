#!/bin/bash
NAME="github_pages"
IMAGE="github_pages"

docker run \
    --hostname "${NAME}" \
    --interactive \
    --name "${NAME}" \
    --rm \
    --privileged \
    --detach \
    --net=host \
    -u $(id -u) \
    --env DISPLAY=:0.0 \
    --volume="$HOME/.Xauthority:/root/.Xauthority:rw" \
    --volume "$(pwd)/:/app" \
    --volume /tmp/.X11-unix:/tmp/.X11-unix \
    $IMAGE

docker start $NAME
