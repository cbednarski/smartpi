#!/bin/bash

apt-get install -y ipxe tftpd-hpa isc-dhcp-server

# Setup dhcp
cp dhcpd.conf /etc/dhcpd.conf
cp isc-dhcp-server /etc/default/isc-dhcp-server
service isc-dhcp-server restart

# Setup tftp
cp tftpd-hpa /etc/default/tftpd-hpa
cp /usr/lib/ipxe/undionly.kpxe /srv/tftp/undionly.kpxe
service tftpd-hpa restart

# Setup smartos
cp smartos.ipxe /srv/tftp/smartos.ipxe

# Change ownership so tftpd can read the files
chown -R tftp:tftp /srv/tftp
