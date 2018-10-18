#!/bin/bash

set -e

ADMINUSER="admin"
USER="jrivero"

echo -e "${0} I AM WORKING " > /home/jrivero/root_setup.log

# Updating and Upgrading dependencies
sudo apt-get update -y -qq  >> /home/jrivero/root_setup.log
