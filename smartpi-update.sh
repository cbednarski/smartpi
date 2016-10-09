#!/bin/bash

rm -rf /srv/tftp/smartos/latest
mkdir -p /srv/tftp/smartos/latest
wget https://us-east.manta.joyent.com/Joyent_Dev/public/SmartOS/smartos-latest.iso -o /srv/tftp/smartos/latest/smartos.iso

wget http://us-east.manta.joyent.com/Joyent_Dev/public/SmartOS/20160929T025934Z/platform-20160929T025934Z.tgz
tar -xzf platform-20160929T025934Z.tgz
