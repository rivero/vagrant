#!/bin/bash

set -e

echo -e "${0} I AM WORKING "

# Installing vagrant keys
mkdir /home/jrivero/.ssh
chmod 700 /home/jrivero/.ssh
cd /home/jrivero/.ssh
wget --no-check-certificate 'http://10.42.121.184:8000/keys/jrivero.pub' -O authorized_keys
chmod 600 /home/jrivero/.ssh/authorized_keys
chown -R jrivero /home/jrivero/.ssh
