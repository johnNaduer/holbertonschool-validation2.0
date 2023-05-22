#!/bin/bash

apt-get update && apt-get install -y hugo make

apt-get install -y wget
apt-get remove -y hugo
wget https://go.dev/dl/go1.20.4.linux-amd64.tar.gz
wget https://github.com/gohugoio/hugo/releases/download/v0.84.0/hugo_extended_0.84.0_Linux-64bit.tar.gz
rm -rf /usr/local/go && tar -C /usr/local -xzf go1.20.4.linux-amd64.tar.gz
export PATH=$PATH:/usr/local/go/bin
tar -xzf hugo_extended_0.84.0_Linux-64bit.tar.gz
mv hugo /usr/local/bin
rm -rf go1.20.4.linux-amd64.tar.gz hugo_extended_0.84.0_Linux-64bit.tar.gz

make build

