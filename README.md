# smartpi

Turn your Raspberry Pi into a PXE boot server for SmartOS. Supports Raspbian. I suppose you could technically use the PXE boot infrastructure for any OS but we'll focus on SmartOS in this project.

## Basic Requirements

- 1 Raspberry Pi (I used a model B v3)
- 1 server you want to boot as SmartOS

## Non-Features

- This project **does not** help you run SmartOS on a Raspberry Pi.
- This project **does not** help you netboot other Raspberry Pis.

## How To Use

Install the scripts on your rpi.

1. Run `smartpi-setup.sh` to install and configure your raspberry pi as an iPXE boot server.
2. Run `smartpi-update.sh` to download the latest version of SmartOS.
3. PXE boot your server. This is easiest via IPMI or a similar remote management feature.
