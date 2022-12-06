#!/bin/bash

## Install yandex tank

echo "[Yandex Tank] : add additional repository..."
{   echo 'deb http://ppa.launchpad.net/yandex-load/main/ubuntu trusty main'; \
    echo 'deb-src http://ppa.launchpad.net/yandex-load/main/ubuntu trusty main'; \
} | tee /etc/apt/sources.list.d/yatank.list;

apt-key adv --keyserver keyserver.ubuntu.com --recv-keys 0CDB03F8CB37D8D1

apt-get update && apt-get install --no-install-recommends -y yandex-tank