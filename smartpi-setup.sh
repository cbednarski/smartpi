#!/bin/bash

apt-get install -y ipxe tftpd-hpa isc-dhcp-server

# Setup dhcp
cp dhcpd.conf /etc/dhcpd.conf
cp ics-dhcp-server /etc/default/ics-dhcp-server
service ics-dhcp-server restart

# Setup tftp
ln -s /usr/lib/ipxe/undionly.kpxe /srv/tftp/undionly.kpxe

