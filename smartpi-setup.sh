#!/bin/bash

apt-get install -y ipxe tftpd-hpa isc-dhcp-server

# Setup dhcp
cp dhcpd.conf /etc/dhcpd.conf
cp isc-dhcp-server /etc/default/isc-dhcp-server
service isc-dhcp-server restart

# Setup tftp
ln -s /usr/lib/ipxe/undionly.kpxe /srv/tftp/undionly.kpxe

