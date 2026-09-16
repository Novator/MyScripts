#!/bin/sh

#scp ./2022.07.01.web279e.rar aaaa@robux.perm.ru:~/www/robux.perm.ru/
#scp ./WinRAR351.zip aaaaaa@robux.perm.ru:~/www/robux.perm.ru/
#rsync -av --partial --rsh=ssh ./web334a.rar a239@robux.perm.ru:~/www/robux.perm.ru/
#rsync -aPzv --rsh="ssh -p 11222" root@servak.work.gd:/root/YouTube/* /mnt/win/Media/YouTube/

#rsync -rptgoDPvL --rsh="ssh -p 11222 -c chacha20-poly1305@openssh.com" --files-from=./send2me.list root@servak.work.gd:/root/ /mnt/win/Media/YouTube/
#rsync -rptgoDPvk --rsh="ssh -p 11222 -c chacha20-poly1305@openssh.com" --no-relative --files-from=./send2me.list root@servak.work.gd:/root/ /mnt/win/Media/

#scp -r -P 11222 root@servak.work.gd:/root/curl/include/curl ./
#rsync -aPv --rsh="ssh -p 11222 -c chacha20-poly1305@openssh.com" root@servak.work.gd:/root/RealiTLScanner/RealiTLScanner ./
#rsync -aPv --rsh="ssh -p 11222 -c chacha20-poly1305@openssh.com" root@servak.work.gd:/root/YouTube/* /mnt/win/Media/YouTube/
#rsync -aPv --rsh="ssh -p 11222 -c chacha20-poly1305@openssh.com" root@servak.work.gd:/root/VPS/Xray-core/xray_reality* /mnt/data/Distr/Linux/Xray/server/

#rsync -aPv --rsh="ssh -p 11222 -c chacha20-poly1305@openssh.com" /mnt/data/Work/DariaGr/Src/2023.12.09.web335car335.rar root@servak.work.gd:/root/
#rsync -aPv --rsh="ssh -p 11222 -c chacha20-poly1305@openssh.com" /mnt/data/Work/DariaGr/Src/2023.12.18.web336.rar root@servak.work.gd:/root/
#rsync -aPv --rsh="ssh -p 11222 -c chacha20-poly1305@openssh.com" /mnt/data/Work/DariaGr/Src/WinRAR351.zip root@servak.work.gd:/root/

rsync -aPvkr --rsh="ssh -p 11222 -c chacha20-poly1305@openssh.com" --no-relative --files-from=./send2me.list root@servak.work.gd:/root/ /mnt/win/Media/
mv -v /mnt/win/Media/yt-list* /mnt/data/Progs/Scripts/

