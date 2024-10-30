#!/bin/bash

export DEBIAN_FRONTEND=noninteractive

apt update && apt install isc-dhcp-relay -y

cp -f isc-dhcp-relay /etc/default/isc-dhcp-relay
