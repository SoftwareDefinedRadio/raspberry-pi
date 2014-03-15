#!/bin/sh
# Download and install shairport.
# Copyright 2014 Thomas M. Parks <tmparks@yahoo.com> All rights reserved.

# Build in a temporary directory.
TEMPLATE=`basename $0 .sh`-XXXXXXXXXXXX
cd `mktemp -d /tmp/$TEMPLATE`
(
date
echo Starting build in $PWD

sudo apt-get update
sudo apt-get -y install libssl-dev libavahi-client-dev libasound2-dev
git clone https://github.com/abrasive/shairport

cd shairport
./configure
make
sudo make install

date
echo Build complete.
) | tee `mktemp $TEMPLATE.log` 2>&1

