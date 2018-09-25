#!/bin/sh
echo 'Step 1: updating bashrc'

sudo echo 'export DOCKER_TLS_VERIFY=0
export DOCKER_HOST=tcp://$(cd /mnt/c && docker-machine.exe ip):2376' >> ~/.bashrc

USERNAME=$(cmd.exe /c "echo %USERNAME%" | sed -e 's/\r//g')
echo $USERNAME

echo 'Step 2: updating certs'
mkdir -p ~/.docker
rm ~/.docker/*
ln -s /mnt/c/Users/$USERNAME/.docker/machine/certs/ca.pem ~/.docker/ca.pem
ln -s /mnt/c/Users/$USERNAME/.docker/machine/certs/ca-key.pem ~/.docker/ca-key.pem
ln -s /mnt/c/Users/$USERNAME/.docker/machine/certs/cert.pem ~/.docker/cert.pem
ln -s /mnt/c/Users/$USERNAME/.docker/machine/certs/key.pem ~/.docker/key.pem

echo 'Step 2: updating certs'
base=https://github.com/docker/machine/releases/download/v0.14.0 &&
curl -L $base/docker-machine-$(uname -s)-$(uname -m) >/tmp/docker-machine &&
sudo install /tmp/docker-machine /usr/local/bin/docker-machine