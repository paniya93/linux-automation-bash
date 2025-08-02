#!/bin/bash
#Author Praneeth Perera

#Ubuntu OS

PACKAGES=(git curl telnet nmap htop tree)

for pkg in "$PACKAGES"; do
	if ! dpkg -l | grep -q "$ppkg"; then
		echo "Installing $pkg..."
		sudo apt-get install -y $pkg
	else
		echo "$pkg is already installed."
	fi
done

# RHEL OS

PACKAGES=(git curl telnet nmap htop tree)

for pkg in "$PACKAGES"; do
	if ! rpm -q | grep -q "$ppkg"; then
		echo "Installing $pkg..."
		sudo yum install -y $pkg
	else
		echo "$pkg is already installed."
	fi
done

