#!/bin/sh
echo 'Step 1: updating bashrc'

base=https://github.com/docker/machine/releases/download/v0.15.0

curl -L $base/docker-machine-$(uname -s)-$(uname -m) >/tmp/docker-machine

chmod +x /tmp/docker-machine

sudo cp /tmp/docker-machine /usr/local/bin/docker-machine

# ?
docker-machine create --driver none -url=tcp://192.168.99.100:2376 default