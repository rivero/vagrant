#!/bin/bash

set -e

# Install necessary libraries for guest additions and Vagrant NFS Share
sudo apt-get -y -q install dkms build-essential linux-headers-generic nfs-common linux-headers-$(uname -r)