#!/bin/bash

mkdir -p ~/ansible

~/.local/bin/ansible-galaxy install diodonfrost.podman

# prepare ansible configuration file
cat > ~/ansible/podman.yml <<EOF
---
- name: Install podman
  hosts: localhost
  connection: local

  roles:
     - role: diodonfrost.podman
       become: yes
EOF

~/.local/bin/ansible-playbook $HOME/ansible/podman.yml

~/.local/bin/pipx install podman-compose
