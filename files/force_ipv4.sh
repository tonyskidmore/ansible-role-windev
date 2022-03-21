#!/bin/bash

. /etc/os-release

if [[ "$NAME" == "Ubuntu" ]]
then
  echo 'Acquire::ForceIPv4 "true";' | sudo tee /etc/apt/apt.conf.d/99force-ipv4
fi
