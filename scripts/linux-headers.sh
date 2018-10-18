#!/bin/bash

set -e

echo -e "${0} I AM WORKING " > /home/jrivero/root_setup.log

# Install necessary libraries for guest additions and Vagrant NFS Share
sudo apt-get -y -q install linux-headers-$(uname -r) build-essential dkms nfs-common >> /home/jrivero/root_setup.log
