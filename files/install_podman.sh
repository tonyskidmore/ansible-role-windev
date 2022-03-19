#!/bin/bash

mkdir -p $HOME/ansible

ansible-galaxy install diodonfrost.podman

# prepare ansible configuration file
cat > $HOME/ansible/podman.yml <<EOF
---
- name: Install podman
  hosts: localhost
  connection: local

  roles:
     - role: diodonfrost.podman
       become: yes
EOF

ansible-playbook $HOME/ansible/podman.yml

pipx install podman-compose
