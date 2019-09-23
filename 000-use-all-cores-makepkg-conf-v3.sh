#!/bin/bash
set -e
##################################################################################################################
# Author	:	Erik Dubois
# Website	:	https://www.erikdubois.be
# Website	:	https://www.arcolinux.info
# Website	:	https://www.arcolinux.com
# Website	:	https://www.arcolinuxd.com
# Website	:	https://www.arcolinuxb.com
# Website	:	https://www.arcolinuxiso.com
# Website	:	https://www.arcolinuxforum.com
##################################################################################################################
#
#   DO NOT JUST RUN THIS. EXAMINE AND JUDGE. RUN AT YOUR OWN RISK.
#
##################################################################################################################

numberofcores=$(grep -c ^processor /proc/cpuinfo)

case $numberofcores in

    32)
        echo "You have " $numberofcores" CPU threads available."
        echo "Changing the makeflags for "$numberofcores" threads."
        sudo sed -i 's/#MAKEFLAGS="-j2"/MAKEFLAGS="-j33"/g' /etc/makepkg.conf
        echo "Changing the compression settings for "$numberofcores" threads."
        sudo sed -i 's/COMPRESSXZ=(xz -c -z -)/COMPRESSXZ=(xz -c -T 32 -z -)/g' /etc/makepkg.conf
        ;;
    24)
        echo "You have " $numberofcores" CPU threads available."
        echo "Changing the makeflags for "$numberofcores" threads."
        sudo sed -i 's/#MAKEFLAGS="-j2"/MAKEFLAGS="-j25"/g' /etc/makepkg.conf
        echo "Changing the compression settings for "$numberofcores" threads."
        sudo sed -i 's/COMPRESSXZ=(xz -c -z -)/COMPRESSXZ=(xz -c -T 24 -z -)/g' /etc/makepkg.conf
        ;;
    20)
        echo "You have " $numberofcores" CPU threads available."
        echo "Changing the makeflags for "$numberofcores" threads."
        sudo sed -i 's/#MAKEFLAGS="-j2"/MAKEFLAGS="-j21"/g' /etc/makepkg.conf
        echo "Changing the compression settings for "$numberofcores" threads."
        sudo sed -i 's/COMPRESSXZ=(xz -c -z -)/COMPRESSXZ=(xz -c -T 20 -z -)/g' /etc/makepkg.conf
        ;;
    16)
        echo "You have "$numberofcores" CPU threads available."
        echo "Changing the makeflags for "$numberofcores" threads."
        sudo sed -i 's/#MAKEFLAGS="-j2"/MAKEFLAGS="-j17"/g' /etc/makepkg.conf
        echo "Changing the compression settings for "$numberofcores" threads."
        sudo sed -i 's/COMPRESSXZ=(xz -c -z -)/COMPRESSXZ=(xz -c -T 16 -z -)/g' /etc/makepkg.conf
        ;;
    12)
        echo "You have " $numberofcores" CPU threads available."
        echo "Changing the makeflags for "$numberofcores" threads."
        sudo sed -i 's/#MAKEFLAGS="-j2"/MAKEFLAGS="-j13"/g' /etc/makepkg.conf
        echo "Changing the compression settings for "$numberofcores" threads."
        sudo sed -i 's/COMPRESSXZ=(xz -c -z -)/COMPRESSXZ=(xz -c -T 12 -z -)/g' /etc/makepkg.conf
        ;;
    10)
        echo "You have " $numberofcores" CPU threads available."
        echo "Changing the makeflags for "$numberofcores" threads."
        sudo sed -i 's/#MAKEFLAGS="-j2"/MAKEFLAGS="-j11"/g' /etc/makepkg.conf
        echo "Changing the compression settings for "$numberofcores" threads."
        sudo sed -i 's/COMPRESSXZ=(xz -c -z -)/COMPRESSXZ=(xz -c -T 10 -z -)/g' /etc/makepkg.conf
        ;;
    8)
        echo "You have "$numberofcores" CPU threads available."
        echo "Changing the makeflags for "$numberofcores" threads."
        sudo sed -i 's/#MAKEFLAGS="-j2"/MAKEFLAGS="-j9"/g' /etc/makepkg.conf
        echo "Changing the compression settings for "$numberofcores" threads."
        sudo sed -i 's/COMPRESSXZ=(xz -c -z -)/COMPRESSXZ=(xz -c -T 8 -z -)/g' /etc/makepkg.conf
        ;;
    6)
        echo "You have "$numberofcores" CPU threads available."
        echo "Changing the makeflags for "$numberofcores" threads."
        sudo sed -i 's/#MAKEFLAGS="-j2"/MAKEFLAGS="-j7"/g' /etc/makepkg.conf
        echo "Changing the compression settings for "$numberofcores" threads."
        sudo sed -i 's/COMPRESSXZ=(xz -c -z -)/COMPRESSXZ=(xz -c -T 6 -z -)/g' /etc/makepkg.conf
        ;;
    4)
        echo "You have "$numberofcores" CPU threads available."
        echo "Changing the makeflags for "$numberofcores" threads."
        sudo sed -i 's/#MAKEFLAGS="-j2"/MAKEFLAGS="-j5"/g' /etc/makepkg.conf
        echo "Changing the compression settings for "$numberofcores" threads."
        sudo sed -i 's/COMPRESSXZ=(xz -c -z -)/COMPRESSXZ=(xz -c -T 4 -z -)/g' /etc/makepkg.conf
        ;;
    2)
        echo "You have "$numberofcores" CPU threads available."
        echo "Changing the makeflags for "$numberofcores" threads."
        sudo sed -i 's/#MAKEFLAGS="-j2"/MAKEFLAGS="-j3"/g' /etc/makepkg.conf
        echo "Changing the compression settings for "$numberofcores" threads."
        sudo sed -i 's/COMPRESSXZ=(xz -c -z -)/COMPRESSXZ=(xz -c -T 2 -z -)/g' /etc/makepkg.conf
        ;;
    *)
        echo "Update the scipt manually for "$numberofcores" thread support."
        ;;

esac

echo "##################################################################################"
echo "### "$numberofcores" CPU threads will be used during building and compression ####"
echo "##################################################################################"
