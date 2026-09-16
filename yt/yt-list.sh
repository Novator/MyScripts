#!/bin/bash

date

LST=./yt-list.lst
LOG=./yt-list.txt


mv $LOG ./yt-list-old.txt

LINCNT=`cat $LST | wc -l`
linnum=0
capt=""

while IFS= read -r line
do
  linnum=$((linnum+1))
  if [[ "$line" != "#"* ]]; then
    if [[ "$line" == "http"* ]]; then
      echo "$(($linnum*100/LINCNT))%"
      urltail=""
      [[ "$capt" == "*"* ]] || urltail="/videos"   #только основные видео, если вначале нет звезды, иначе с шортсами
      [ "$capt" != "" ] || capt=`echo "$line" | cut -d/ -f4-5`  #ID канала из youtube-url (с 4й по 5й слэш)
      [ "$capt" != "" ] || capt=$line
      echo "-----$capt" | tee -a $LOG
      ./yt-one.sh "${line}${urltail}" >> $LOG
      capt=""
    else
      capt=$line
    fi
  else
    [ "$capt" != "" ] || capt=$line
  fi
done < $LST

diff ./yt-list-old.txt $LOG > yt-list.diff

