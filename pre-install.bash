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

# copy files
cp etc/docker/daemon.json /etc/docker/daemon.json

# install openshift
wget https://github.com/openshift/origin/releases/download/v3.10.0/openshift-origin-client-tools-v3.10.0-dd10d17-linux-64bit.tar.gz
tar -xvzf openshift-origin-client-tools-v3.10.0-dd10d17-linux-64bit.tar.gz
mv openshift-origin-client-tools-v3.10.0-dd10d17-linux-64bit/oc /usr/bin
