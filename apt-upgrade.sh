#!/bin/sh

##This is a script for force upgrade ubuntu
##2012(c)Michael Galyuk

#/mnt/data/Personal/C/usbreset/resetmodem.sh

apt-get -y update

Res=1
while [ $Res != 0 ]; do
  echo "Try to upgrade (Res=$Res)..."
  /mnt/data/Personal/C/usbreset/resetmodem.sh

  apt-get -y --force-yes --fix-missing upgrade
  Res=$?

  #if [ $Res = 0 ]; then
    #apt-get -y install gimp libreoffice inkscape firefox
    #Res=$?
  #fi

  sleep 10
done

#poweroff
pm-suspend
