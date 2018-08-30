#!/usr/bin/env bash

# upgrading OS
dnf update -y -x kernel-*
dnf install -y docker git vim curl dos2unix zip unzip bash-completion

# docker vagrant user
groupadd docker
usermod -aG docker vagrant

# docker service
systemctl enable docker
systemctl start docker
