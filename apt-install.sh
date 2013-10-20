#!/bin/sh


Res=1

#apt-get -y update

while [ $Res != 0 ]; do
  echo "Снова пытаемся (Res=$Res)"
  /mnt/data/Personal/C/usbreset/resetmodem.sh

  #apt-get -y --force-yes upgrade --fix-missing
  #apt-get -y install unetbootin chromium-browser
  #apt-get -y install linux-image-3.8.0-29-generic
  #apt-get -y --force-yes install intltool
  #apt-get -y --force-yes install libgtk2.0-dev
  #apt-get -y --force-yes --fix-missing install wine linux-lowlatency gstreamer0.10-plugins-bad
  #apt-get -y --force-yes --fix-missing install modem-manager-gui
  #apt-get -y --force-yes --fix-missing install assaultcube cups
  #apt-get -y --force-yes --fix-missing install audacity retroshare
  #apt-get -y --force-yes --fix-missing install unetbootin libreoffice wine make build-essential ruby1.9.1
  #apt-get -y --force-yes --fix-missing install devscripts debhelper
  #apt-get -y --force-yes --fix-missing install pandora-net eagle
  #apt-get -y --force-yes --fix-missing install relinux remastersys-gtk ubiquity-frontend-gtk
  #apt-get -y --force-yes --fix-missing install libgtk2.0-dev libpango1.0-dev libmodplug-dev intltool
  #apt-get -y --force-yes --fix-missing install git
  #apt-get -y --force-yes --fix-missing install rails
  apt-get -y --force-yes --fix-missing install gparted libreoffice-l10n-ru
  #apt-get -y --force-yes --fix-missing install gimp
  Res=$?
  sleep 10
done

#poweroff
#pm-suspend
