#!/bin/bash

# Author: CaydennO1 (QXIoa)

echo "Starting the conversion from Ubuntu to Debian..."

# Backup current sources.list
echo "Backing up current sources.list..."
sudo cp /etc/apt/sources.list /etc/apt/sources.list.bak

# Update and upgrade current packages
echo "Updating and upgrading current packages..."
sudo apt-get update -y && sudo apt-get upgrade -y

# Remove Ubuntu-specific packages
echo "Removing Ubuntu-specific packages..."
sudo apt-get remove --purge ubuntu-desktop ubuntu-standard ubuntu-minimal -y || true
sudo apt-get autoremove -y
if dpkg -l | grep -q lightdm; then
  sudo apt purge lightdm
else
fi
sudo apt purge *dm
sudo apt purge dm*

# Add Debian repositories
echo "Adding Debian repositories..."
echo "deb http://deb.debian.org/debian stable main contrib non-free" | sudo tee /etc/apt/sources.list
echo "deb-src http://deb.debian.org/debian stable main contrib non-free" | sudo tee -a /etc/apt/sources.list
echo "deb http://security.debian.org/debian-security stable-security main contrib non-free" | sudo tee -a /etc/apt/sources.list
echo "deb-src http://security.debian.org/debian-security stable-security main contrib non-free" | sudo tee -a /etc/apt/sources.list

echo "Updating package list from Debian repositories..."
sudo apt-get update -y

echo "Installing Debian keyring..."
sudo apt-get install debian-archive-keyring -y

sudo apt-get dist-upgrade -y

# Clean up unnecessary packages
echo "Cleaning up unnecessary packages..."
sudo apt-get autoremove -y && sudo apt-get autoclean -y

# Install Debian desktop environment
echo "Installing Debian desktop environment..."
if dpkg -l | grep -q tasksel; then
else
  sudo apt update
  sudo apt-get install tasksel -y
fi
sudo tasksel install standard
sudo tasksel install desktop
if dpkg -l | grep -q debian-system-adjustments; then
else
  sudo apt-get install debian-system-adjustments -y; sudo apt update
fi

sudo apt-get update -y && sudo apt-get upgrade -y

echo "Conversion from Ubuntu to Debian is complete. Please review the changes and reboot your system."
