#!/usr/bin/env bash

# upgrading OS
dnf update -y -x kernel-*
dnf install -y docker git vim bash-completion curl

# docker service
systemctl enable docker
systemctl start docker
