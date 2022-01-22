#!/bin/bash

/home/adminuser/.local/bin/pipx install ansible[azure] --include-deps

# put SSH private key file in place
if [[ -f /mnt/c/ProgramData/ansible/id_rsa ]]
then
  mkdir -p ~/.ssh
  chmod 0700 ~/.ssh
  cp /mnt/c/ProgramData/ansible/id_rsa ~/.ssh/id_rsa
  chmod 0600 ~/.ssh/id_rsa
else
  echo "/mnt/c/ProgramData/ansible/id_rsa"
fi

