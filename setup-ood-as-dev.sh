#!/bin/bash
set -e

# This will set up the user ood as an app developer on the path ~ood/ondemand/dev

mkdir -p /var/www/ood/apps/dev/ood
sudo -u ood mkdir -p ~ood/ondemand/dev

ln -s ~ood/ondemand/dev /var/www/ood/apps/dev/ood/gateway

echo 'Finished setting ood up as a developer on path ~ood/ondemand/dev'
