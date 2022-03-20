#!/bin/bash

# mkdir -p ~/ansible

# ~/.local/bin/ansible-galaxy install diodonfrost.podman

# # prepare ansible configuration file
# cat > ~/ansible/podman.yml <<EOF
# ---
# - name: Install podman
#   hosts: localhost
#   connection: local

#   roles:
#      - role: diodonfrost.podman
#        become: yes
# EOF

# ~/.local/bin/ansible-playbook $HOME/ansible/podman.yml

# TODO: put logic here
sudo apt-get -y update
sudo apt-get -y install podman

~/.local/bin/pipx install podman-compose
