#!/bin/bash

. /etc/os-release

# https://podman.io/getting-started/installation.html
# TODO: put logic here
# 20.10 or greater can just use 'apt install podman'
if [[ "$NAME" == "Ubuntu" ]]
then
  sudo sh -c "echo 'deb http://download.opensuse.org/repositories/devel:/kubic:/libcontainers:/stable/x${NAME}_${VERSION_ID}/ /' > /etc/apt/sources.list.d/devel:kubic:libcontainers:stable.list"
  wget -nv https://download.opensuse.org/repositories/devel:kubic:libcontainers:stable/x${NAME}_${VERSION_ID}/Release.key -O Release.key
  sudo apt-key add - < Release.key
  sudo apt-get update -qq
  sudo apt-get -qq -y install podman
  sudo mkdir -p /etc/containers
  echo -e "[registries.search]\nregistries = ['docker.io', 'quay.io']" | sudo tee /etc/containers/registries.conf
fi

~/.local/bin/pipx install podman-compose
