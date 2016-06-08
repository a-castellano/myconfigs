#!/usr/bin/env bash

mkdir -p /root/.ssh
cat /vagrant/ssh_keys/id_rsa.pub > /root/.ssh/authorized_keys
cp /vagrant/ssh_keys/id_rsa /root/.ssh/id_rsa
chmod 400 /root/.ssh/id_rsa
cp /vagrant/ssh_keys/id_rsa.pub /root/.ssh/id_rsa.pub
apt-get update -y
apt-get upgrade -y
ifconfig