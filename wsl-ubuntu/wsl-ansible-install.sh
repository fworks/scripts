#!/bin/sh
echo 'Step 1: adding repository'
sudo apt-get update

sudo apt-get install -y software-properties-common

sudo apt-add-repository ppa:ansible/ansible

echo 'Step 2: installing'
sudo apt-get update

sudo apt-get install -y ansible