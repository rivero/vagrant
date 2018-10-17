#!/bin/bash

set -e

ADMINUSER="admin"
USER="jrivero"

echo -e "${0} I AM WORKING " > /tmp/root_setup.log

# Updating and Upgrading dependencies
sudo apt-get update -y -qq > /dev/null
sudo apt-get upgrade -y -qq > /dev/null
sudo apt-get install openssh-server -y -qq > /dev/null

# Install necessary libraries for guest additions and Vagrant NFS Share
sudo apt-get -y -q install linux-headers-$(uname -r) build-essential dkms nfs-common

# Install necessary dependencies
sudo apt-get -y -q install curl wget git tmux firefox xvfb vim

# Setup sudo to allow no-password sudo for "admin"
groupadd -r "${ADMINUSER}"
usermod -a -G "${ADMINUSER}" "${USER}"
cp /etc/sudoers /etc/sudoers.orig
sed -i -e '/Defaults\s\+env_reset/a Defaults\texempt_group=admin' /etc/sudoers
sed -i -e 's/%admin ALL=(ALL) ALL/%admin ALL=NOPASSWD:ALL/g' /etc/sudoers

