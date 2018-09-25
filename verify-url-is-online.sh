#!/bin/bash
if [ $# -eq 0 ]
then
    echo "No arguments supplied"
    exit
fi

echo 'verifying: '$1
until $(curl --output /dev/null --silent --head --fail $1); do
    printf '.'
    sleep 2
done
echo 'online: '$1