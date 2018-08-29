#!/usr/bin/env bash

# upgrading OS
dnf update -y -x kernel-*
dnf install -y docker git vim bash-completion curl

# docker vagrant user
groupadd docker
usermod -aG docker vagrant

# docker service
systemctl enable docker
systemctl start docker
