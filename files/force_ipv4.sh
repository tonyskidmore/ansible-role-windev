#!/bin/bash

. /etc/os-release

echo "NAME: $NAME"

if [[ "$NAME" == "Ubuntu" ]]
then
  echo 'Setting: Acquire::ForceIPv4 "true";'
  echo 'Acquire::ForceIPv4 "true";' > /etc/apt/apt.conf.d/99force-ipv4
fi
