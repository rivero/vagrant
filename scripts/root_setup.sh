#!/bin/bash

set -e

ADMINUSER="admin"
USER="jrivero"

echo -e "${0} I AM WORKING " > /home/jrivero/root_setup.log

# Setup sudo to allow no-password sudo for "admin"
groupadd -r "${ADMINUSER}"
usermod -a -G "${ADMINUSER}" "${USER}"
cp /etc/sudoers /etc/sudoers.orig
sed -i -e '/Defaults\s\+env_reset/a Defaults\texempt_group=admin' /etc/sudoers
sed -i -e 's/%admin ALL=(ALL) ALL/%admin ALL=NOPASSWD:ALL/g' /etc/sudoers
