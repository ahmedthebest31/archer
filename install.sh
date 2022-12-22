#!/bin/bash

# Update the package database
pacman -Sy

# Set the mirror to a local mirror in Cairo, Egypt
echo "Server = http://archlinux.egy.edu.eg/\$repo/os/\$arch" > /etc/pacman.d/mirrorlist
# Set the timezone
ln -sf /usr/share/zoneinfo/Africa/Cairo /etc/localtime
 
 # Enable the network time protocol
timedatectl set-ntp true

# Install the base package
pacman -S base

# Generate fstab file
genfstab -U / >> /etc/fstab

# Install and configure the bootloader
pacman -S grub
grub-install /dev/sda
grub-mkconfig -o /boot/grub/grub.cfg

# Set the root password
passwd

# Create a new user with the username "ahmed" and password "0000"
useradd -m -G wheel -p $(openssl passwd -1 0000) ahmed

# Install the XFCE desktop environment
pacman -S xfce4 xfce4-goodies

# Make XFCE the default desktop environment
echo "exec startxfce4" > ~/.xinitrc

# Enable automatic login for the "ahmed" user
echo '#!/bin/bash

[daemon]
AutomaticLogin=ahmed
AutomaticLoginEnable=True
' > /etc/gdm/custom.conf

# fonts
# Install the Microsoft fonts
pacman -S ttf-ms-fonts

# Install the Meslo, Fira Code, Poppins, and Roboto fonts
pacman -S ttf-meslo-nerd-font ttf-fira-code ttf-poppins ttf-roboto

# Install the Orca screen reader
pacman -S orca

# Clone the Orca configuration file from GitHub and replace the default configuration
curl https://raw.githubusercontent.com/ahmedthebest31/orca.conf/master/user.conf > ~/.config/orca/user.conf

# Autostart Orca after login
echo '#!/bin/bash
orca --replace &
' > ~/.config/autostart/orca.sh

# Create a log file for the installation process
touch installation.log

# Redirect all output to the log file
exec > installation.log 2>&1

# Start the installation process
echo "Starting installation..."

# Perform the rest of the installation tasks
# (replace this with the actual tasks you want to perform)
echo "Installation complete."

