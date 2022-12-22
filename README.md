# Auto-Arch 

 a bash script that will automatically install Arch Linux and set all my default configurations, 

 • change the mirror to a local mirror closest to Cairo Egypt
  • set the hostname to "ahmedthebest"
  • set the username to "ahmed" and password to "0000" 
 • install xfce desktop environment, make it default, configure to auto login automatically
  • download and install Microsoft fonts, Meslo_LG, Fira_Code, Poppins, Roboto
  • clone my orca configuration file from "https://github.com/ahmedthebe•st31/orca.conf" and replace it with the default orca user.conf
• generate .log files for the holl installation process

## how to use
## Create Arch ISO or Use Image

Download ArchISO from <https://archlinux.org/download/> and put on a USB drive with [Etcher](https://www.balena.io/etcher/), [Ventoy](https://www.ventoy.net/en/index.html), or [Rufus](https://rufus.ie/en/)
From initial Prompt type the following commands:

```
pacman -Sy git
git clone https://www.github.com/ahmedthebest31/archer
cd archer
./install.sh
 ```


## note
This script assumes that you are installing Arch Linux on the first hard drive (/dev/sda) and that you want to set the hostname to "ahmedthebest", user="ahmed", password="0000". You can customize these values to suit your needs.