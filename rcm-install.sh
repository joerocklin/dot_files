#!/usr/bin/env bash

wget https://thoughtbot.github.io/rcm/dist/rcm-1.2.3.tar.gz && \
tar -xvf rcm-1.2.3.tar.gz && \
cd rcm-1.2.3 && \

./configure --prefix=/home/${USER} && \
make && \
make install && \
cd - && \
rm -rf rcm-*
