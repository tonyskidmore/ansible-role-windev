#!/bin/bash

apt update
apt -y install python3-pip
apt -y install python3.8-venv
python3 -m pip install pip --upgrade
python3 -m pip install setuptools --upgrade
