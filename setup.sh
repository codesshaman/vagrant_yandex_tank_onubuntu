#!/bin/bash

## Install yandex tank

echo "[Yandex Tank] : add additional repository..."
{   echo 'deb http://ppa.launchpad.net/yandex-load/main/ubuntu trusty main'; \
    echo 'deb-src http://ppa.launchpad.net/yandex-load/main/ubuntu trusty main'; \
} | tee /etc/apt/sources.list.d/yatank.list;

echo "[Yandex Tank] : add gpg key..."
apt-key adv --keyserver keyserver.ubuntu.com --recv-keys 0CDB03F8CB37D8D1

echo "[Yandex Tank] : installation..."
apt-get update && apt-get install --no-install-recommends -y yandex-tank \

echo "[Yandex Tank] : create tokenfile..."
echo "$1" > /home/vagrant/token.txt
chown vagrant:vagrant /home/vagrant/token.txt

echo "[Yandex Tank] : create config..."
{   echo '[phantom]'; \
    echo "address=$2"; \
    echo "rps_schedule=$3"; \
    echo "uris=$4"; \
    echo "headers=$5"; \
    # echo '[tank]'; \
    # echo 'plugin_overload=yandextank.plugins.Overload'; \
    # echo '[overload]'; \
    # echo 'token_file=token.txt'; \
} | tee /home/vagrant/load.ini;

echo "[Yandex Tank] : config permissions..."
chown vagrant:vagrant /home/vagrant/load.ini