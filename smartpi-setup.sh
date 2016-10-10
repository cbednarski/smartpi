#!/bin/bash

apt-get install -y ipxe tftpd-hpa isc-dhcp-server

# Setup dhcp
cp dhcpd.conf /etc/dhcpd.conf
cp isc-dhcp-server /etc/default/isc-dhcp-server
service isc-dhcp-server restart

# Setup tftp
cp tftpd-hpa /etc/default/tftpd-hpa
ln -sf /usr/lib/ipxe/undionly.kpxe /srv/tftp/undionly.kpxe
service tftpd-hpa restart

chown -R tftp:tftp /srv/tftp
