#!/bin/sh
# Download and install software packages.
# Copyright 2013 Thomas M. Parks <tmparks@yahoo.com>. All rights reserved.

# Update package list.
sudo apt-get -qy update

# Upgrade all installed packages.
sudo apt-get -qy upgrade

# Install additional packages.
sudo apt-get -qy install \
	avahi-daemon \
	git-gui \
	synaptic \
	tightvncserver \

# Remove packages that are no long er needed.
sudo apt-get -qy autoremove

# Clear local repository of package files.
sudo apt-get -qy clean
