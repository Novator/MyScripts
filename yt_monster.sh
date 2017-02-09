#!/bin/sh

#Path="/mnt/data/Media/"
Path="/home/user/"

Res=1
Try=0

while [ $Res != 0 ]; do
  Try=$(($Try+1))
  echo "Попытка: "$Try
  #/mnt/data/Personal/C/usbreset/resetmodem2.sh

  #youtube-dl -R 1 -o $Path"%(title)s-%(id)s.%(ext)s" --external-downloader 'wget' --external-downloader-args '-c --progress=bar:force' FcsRL6M-0NM
  #youtube-dl -R 2 -o $Path"%(title)s-%(id)s.%(ext)s" Xqsa4u00GXM

  #timeout 300 youtube-dl -f 243+250 -R 2 -o $Path"%(title)s-%(id)s.%(ext)s" vFvL0zSU7HE
  #Res=$?
  #if [ $Res = 0 ]; then
    #timeout 300 youtube-dl -f 243+171 -R 2 -o $Path"%(title)s-%(id)s.%(ext)s" SHBMiL5f_3Q
    #Res=$?
    #if [ $Res = 0 ]; then
      #timeout 300 youtube-dl -f 242+171 -R 2 -o $Path"%(title)s-%(id)s.%(ext)s" _E6dsWCnL8Q
      #Res=$?
      #if [ $Res = 0 ]; then
        #timeout 300 youtube-dl -f 278+249 242+249 -R 2 -o $Path"%(title)s-%(id)s.%(ext)s" HyIj2nDwQMc
#278-256x144, 242-426x240, 243-640x360/249   243/171

#        timeout 300 youtube-dl -f 242+249 -R 2 -o $Path"%(title)s-%(id)s.%(ext)s" IFHADfAqRkI
        timeout 300 youtube-dl -f 242+171 -R 2 -o $Path"%(title)s-%(id)s.%(ext)s" IFHADfAqRkI
#        timeout 300 youtube-dl -f 133+140 -R 2 -o $Path"%(title)s-%(id)s.%(ext)s" M8aeXxKrXHs

        Res=$?
        echo "Res="$Res
      #fi
    #fi
  #fi

  #Res=$?
  #echo "Res="$Res

  #if [ $Res = 0 ]; then
    #apt-get -y --force-yes --fix-missing upgrade
    #apt-get -y install gimp libreoffice inkscape firefox
    #Res=$?
    #echo "Res2="$Res
  #fi

  sleep 3
done

#chown -R user:user /home/user

#poweroff
#pm-suspend

