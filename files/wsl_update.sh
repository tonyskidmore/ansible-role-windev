#!/bin/bash

apt update
apt upgrade -y


# change mtu
ip link set dev eth0 mtu 1404
