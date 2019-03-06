#!/bin/bash
set -e
# This will enable interactive apps on ood-images-full

printf "\nrnode_uri: '/rnode'\n" >> /etc/ood/config/ood_portal.yml
printf "\nnode_uri: '/node'\n" >> /etc/ood/config/ood_portal.yml

# Control which hosts are available for interactive app running by setting an Apache PCRE
printf "\nhost_regex: 'head'\n" >> /etc/ood/config/ood_portal.yml

/opt/ood/ood-portal-generator/sbin/update_ood_portal
systemctl try-restart httpd24-httpd.service httpd24-htcacheclean.service
