# Openshift 3.10 no Fedora usando Vagrant

## Step-by-step
```
vagrant up;
vagrant ssh;
wget https://github.com/openshift/origin/releases/download/v3.10.0/openshift-origin-client-tools-v3.10.0-dd10d17-linux-64bit.tar.gz
tar -xvzf openshift-origin-client-tools-v3.10.0-dd10d17-linux-64bit.tar.gz
sudo mv openshift-origin-client-tools-v3.10.0-dd10d17-linux-64bit/oc /usr/bin
rm -rf openshift-origin-client-tools-v3.10.0-dd10d17-linux-64bit openshift-origin-client-tools-v3.10.0-dd10d17-linux-64bit.tar.gz
sudo cp /vagrant/etc/docker/daemon.json /etc/docker/daemon.json
sudo systemctl restart docker
oc cluster up --public-hostname=192.168.33.10
```

