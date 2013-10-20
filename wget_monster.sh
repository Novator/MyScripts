#!/bin/sh

Link="http://www.adme.ru/vdohnovenie-919705/sumasshedshie-starye-otkrytki-549605"

#Path="/mnt/data/Distr/Linux/iso/"
#Path="/mnt/data/Distr/Linux/"
#Path="/mnt/data/Distr/Win/"
#Path="/mnt/data/Distr/Win/Drivers/"
#Path="/mnt/data/Media/"
Path="/mnt/data/Media/Pictures/Other/"

#./apt-install.sh

Res=1
Try=0

while [ $Res != 0 ]; do
  Try=$(($Try+1))
  echo "Попытка: "$Try
  /mnt/data/Personal/C/usbreset/resetmodem.sh

  #wget -t 0 -c -T 15 --retry-connrefused=on -P $Path $Link
  #wget -r -k -p -E -nc -t 0 -c -T 15 --retry-connrefused=on -P $Path $Link
  #wget -p -nc -T 15 --retry-connrefused=on  -l1 -A "*.gif,*.png,*.jpg,*.jpeg,*.JPG" -P $Path $Link
  #wget -c -T 15 --retry-connrefused=on -P $Path $Link
  #wget -c http://files.adme.ru/files/news/part_54/549605/{1..27}.jpg
  wget -O - $Link | grep -o 'http://.*\.jpg' | xargs wget -t 0 -c -T 15 --retry-connrefused=on -P $Path
  Res=$?
  echo "Res="$Res

  #if [ $Res = 0 ]; then
    #apt-get -y --force-yes --fix-missing upgrade
    #apt-get -y install gimp libreoffice inkscape firefox
    #Res=$?
    #echo "Res2="$Res
  #fi

  sleep 5
done

#poweroff
#pm-suspend

