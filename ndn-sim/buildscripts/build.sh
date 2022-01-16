#!/bin/bash

# update apt packages
apt update -y && apt upgrade -y

export TZ=Asia/Tokyo && export DEBIAN_FRONTEND=noninteractive && apt install -y tzdata

apt install -y python3 && apt install -y python3-pip

# install packages for ndnsim
apt install -y build-essential libsqlite3-dev libboost-all-dev libssl-dev git python3-setuptools castxml
apt install -y gir1.2-goocanvas-2.0 gir1.2-gtk-3.0 libgirepository1.0-dev python3-dev python3-gi python3-gi-cairo python3-pip python3-pygraphviz python3-pygccxml 
pip3 install kiwi


# install packages ns-3 and ndn
cd ndnSIM
if [ ! -d ns-3 ]; then
    git clone https://github.com/named-data-ndnSIM/ns-3-dev.git ns-3
    if [ ! -d ns-3/src/ndnSIM ]; then
        git clone --recursive https://github.com/named-data-ndnSIM/ndnSIM.git ns-3/src/ndnSIM
    fi
fi
if [ ! -d pybindgen ]; then
    git clone https://github.com/named-data-ndnSIM/pybindgen.git pybindgen
fi

#git submodule update --init



tail -f /dev/null
