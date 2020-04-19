#!/bin/bash -e

OLD_HOSTNAME=$(cat /etc/hostname)
read -p "Hostname: " NEW_HOSTNAME
echo "${NEW_HOSTNAME}" > /etc/hostname
sed -i "s/${OLD_HOSTNAME}/${NEW_HOSTNAME}/" /etc/hosts
