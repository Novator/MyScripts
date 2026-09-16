#!/bin/sh

killall ciadpi

#Вот в инете нашел вариант для РТ:
#-s1 -q1 -Y -Ar -s5 -o25000+s -At -f-1 -r1+s -As -s1 -o1+s -s-1 -An -b+500
#(возможно у вас такой и стоит)
#Ещё вариант, вроде как универсальный, работает у меня на ТТК:
#-s1 -q1 -Y -Ar -s5 -o1+s -At -f-1 -r1+s -As -s1 -o1+s -s-1 -An
#улучшенный вариант:
#-s1 -q1 -Y -Ar -s5 -o1+s -At -f-1 -r1+s -As -s1 -o1 +s -s-1 -An -b+500

#Если не поможет, то вот ещё варианты из группы:
#https://t.me/byebyedpi_group/21941
#-a3 -An -o1 -d1 -r1+s -t10 -b4000 -s1+s -s3+s -s6+s -s9+s -s12+s -s15+s -s20+s -s30+s -As -q1+s -s29+s -o5+s -f3 -S -As -d1+s -s3+s -d5+s -s7+s -r2+s -Mh,d -An
#-s1 -q1 -Y -a2 -Art -f-1 -r1+s -Asn
#-s1 -O3 -q1+s -s25+s -t8 -o 2 --auto=t,r,a,s -d 2 -s1 -Ar -At -f-1 -r1+s --udp-fake 12 -Ku -a1 -An -d1 -T1 -At,r,s -s5 -o251337+s -T1
#-d2+s -s 50+s -O 2 -a 10 -As -f20 -r2+s -T2 -At -d2 -s0+s -s5+s -s10+s -s15+s -s25+s -s35+s -s50+s -s60+s -An -n youtube.com -d2:5:2+h -f-3 -r2+sm -o2 -o50+s -r2+s -f-4 -r0+hm -t3
#-Ku -a1 -An -d1 -d3+s -s6+s -d9+s -s12+s -d15+s -s20+s -d25+s -s30+s -d35+s -At,r,s -s1 -q1 -At,r,s -s5 -o25000+s -At,r,s -o1 -d1 -r1+s -t10 -b1500 -d3+s -At,r,s -f-1 -r1+s -At,r,s -s1 -o1+s -s-1
#-S -b+1000 -q 1+s -A n -f 5+s -O 1 -q 1+s -s 25+s -t 5 -H ":googlevideo.com :youtu.be :youtube.com :ytimg.com :yt.be :ggpht.com :gvt1.com :youtube-nocookie.com :googleapis.com :google.com :play.google.com" -n “rutube.ru” -A t -q 1+s -f 1+s -O 1 -q 1+s -s 25+s -t 5 -H ":googlevideo.com :youtu.be :youtube.com :ytimg.com :yt.be :ggpht.com :gvt1.com :youtube-nocookie.com :googleapis.com :google.com :play.google.com" -n “rutube.ru” -A t -b+500
#-n “www.google.com” -q 1+s -O 1 -s 25+s -t 5 -H ":googlevideo.com"
#-s1 -o1 -Ar -o1 -At -f-1 -r1+s -As

#./ciadpi --port 1080 --disorder 1 --fake 0 --ttl 1 -A torst --tlsrec 1+s --debug 1
#./ciadpi -o1 -o25+s -T3 -At o--tlsrec 1+s
#./ciadpi --port 1080 --fake -1 --md5sig
#./ciadpi --oob 1 -s 2 -M h,d -A torst -T 3 -f -1 -r 3+s -S --debug 0 --auto=none
#./ciadpi --port 1080 --ip 127.0.0.1 -s1 -q1 -Y -Ar -s5 -o1+s -At -f-1 -r1+s -As -s1 -o1+s -s-1 -An  #НЕ РАБ 22 окт!


#работало долго НЕ РАБ 22 окт!
#./ciadpi --port 1080 --ip 127.0.0.1 -Kt,h -d1 -s0+s -s5+s -s6+s -s9+s -s12+s -s15+s -s20+s -s30+s -An -Ku -a5 -An


#./ciadpi --port 1080 --ip 127.0.0.1 --oob 1 --split 2 --mod-http h,d --auto torst --fake -1 --tlsrec 3+s --md5sig --auto none --debug 1

#./ciadpi --port 1080 --ip 127.0.0.1 -H:"googlevideo.com youtu.be ggpht.com ytimg.com ggpht.com googleapis.com googleusercontent.com youtube.com" -o1 -a1 -An -n otus.ru -d1:3 -f-1 -a2
#./ciadpi --port 1080 --ip 127.0.0.1 --disoob 6+hm --fake 2+s --split 2+hm -o2 -a2 --disorder 5+sm --fake 3+sm --ttl 4 -o1 -o25+s -T3 -At -f-1 -r1+s -As -b+1500
#./ciadpi --port 1080 --ip 127.0.0.1 --disoob 6+hm --fake 2+s --split 2+hm -o2 -a2 --disorder 5+sm --fake 3+sm --ttl 4
#./ciadpi --port 1080 --ip 127.0.0.1 -a 2 -o 1 -s 4 -s 6

#./ciadpi --port 1080 --ip 127.0.0.1 -a2 -f-204 -n google.com -Qr -s1:5+sm -As -d1 -s3+s -s5+s -q7 -As -o2 -f-43 -As -r5 -Mh -s1:5+s -s3:7+sm
#./ciadpi --port 1080 --ip 127.0.0.1 -l:\x16\x03\x03\x00\xcc\x01\x00\x00\xc8\x03\x03\x68\x27\xe9\xfe\xf8\xe6\x99\xca\xd0\x0c\x93\xa8\x8a\x9c\x96\xd3\x07\x69\xf8\x4a\xe6\x01\x0f\x87\xe8\xf0\x70\x30\xe2\x43\xb0\x54\x00\x00\x24\xc0\x2c\xc0\x2b\xc0\x30\xc0\x2f\xc0\x24\xc0\x23\xc0\x28\xc0\x27\xc0\x0a\xc0\x09\xc0\x14\xc0\x13\x00\x9d\x00\x9c\x00\x3d\x00\x3c\x00\x35\x00\x2f\x01\x00\x00\x7b\x00\x00\x00\x1f\x00\x1d\x00\x00\x1a\x66\x65\x32\x63\x72\x2e\x75\x70\x64\x61\x74\x65\x2e\x6d\x69\x63\x72\x6f\x73\x6f\x66\x74\x2e\x63\x6f\x6d\x00\x05\x00\x05\x01\x00\x00\x00\x00\x00\x0a\x00\x08\x00\x06\x00\x1d\x00\x17\x00\x18\x00\x0b\x00\x02\x01\x00\x00\x0d\x00\x1a\x00\x18\x08\x04\x08\x05\x08\x06\x04\x01\x05\x01\x02\x01\x04\x03\x05\x03\x02\x03\x02\x02\x06\x01\x06\x03\x00\x23\x00\x00\x00\x10\x00\x0e\x00\x0c\x02\x68\x32\x08\x68\x74\x74\x70\x2f\x31\x2e\x31\x00\x17\x00\x00\xff\x01\x00\x01\x00 -f209 -s1+sm -R1-3 -a6 -n google.com -Qr

#./ciadpi --port 1080 --ip 127.0.0.1 -o2 --auto=t,r,a,s -d2
#./ciadpi --port 1080 --ip 127.0.0.1 -H:"googlevideo.com" -r8 -o2 -s7 -q4+s -a3
#./ciadpi --port 1080 --ip 127.0.0.1 -Kt,h -d2 -s0+s -s7+s -s8+s -s13+s -s19+s -s24+s -s29+s -s35+s -An -Ku -a6 -An

#./ciadpi --port 1080 --ip 127.0.0.1 -d1+s -O1 -s29+s -t 5 -An -Ku -a5 -s443+s -d80+s -d443+s -s80+s -s443+s -d53+s -s53+s -d443+s -An
#./ciadpi --port 1080 --ip 127.0.0.1 -f7 -O1 -s29+s --md5sig
#./ciadpi --port 1080 --ip 127.0.0.1 -o1 -d1 -a1 -At,r,s -s1 -d1 -s5+s -s10+s -s15+s -s20+s -r1+s -S -a1 -As -s1 -d1 -s5+s -s10+s -s15+s -s20+s -S -a1  #TTK
#./ciadpi --port 1080 --ip 127.0.0.1 -o1 -a1 -At,r,s -f-1 -a1 -Ar,s -o1 -a1 -At -r1+s -f-1 -t6 -a1
#./ciadpi --port 1080 --ip 127.0.0.1 -o1 -a1 -At,r,s -d1 -a1
#./ciadpi --port 1080 --ip 127.0.0.1 -o2 --auto=t,r,a,s -d2
#./ciadpi --port 1080 --ip 127.0.0.1 -s1 -q1 -a1 -Y -Ar -a1 -s5 -o1+s -At -f-1 -r1+s -a1 -As -s1 -o1+s -s-1 -a1
#./ciadpi --port 1080 --ip 127.0.0.1 -o1 -d1 -a1 -At,r,s -s1 -d1 -s5+s -s10+s -s15+s -s20+s -r1+s -S -a1 -As -s1 -d1 -s5+s -s10+s -s15+s -s20+s -S -a1
#./ciadpi --port 1080 --ip 127.0.0.1 -q1 -r29+s -a4
#./ciadpi --port 1080 --ip 127.0.0.1 -Kt,h -d1 -s0+s -s5+s -s6+s -s9+s -s12+s -s15+s -s20+s -s30+s -An -Ku -a6 -An

#Стратегии BYECIADPI:
#https://t.me/byebyedpi_group/21941
#12 сен 2025
###./ciadpi --port 1080 --ip 127.0.0.1 -a4 -o2 --auto=t,r,a,s -d2 -H:"telegram.org t.me web.telegram.org desktop.telegram.org macos.telegram.org telegram.me telegram.dog core.telegram.org tdesktop.com telegram.tips telegramusercontent.com webk.telegram.org k.telegram.org telesco.pe googlevideo.com youtu.be ggpht.com ytimg.com ggpht.com googleapis.com googleusercontent.com youtube.com cloudflare-ech.com cfl.re cloudflare-dns.com cloudflare-ech.com cloudflare-cn.com cloudflareanycast.net cloudflarechina.cn cloudflarecn.net cf-ipfs.com cloudflare-ipfs.com cloudflare.net cloudflare.com cloudflareresolve.com api.x.com twitter.com api.twitter.com api.tweetdeck.com abs.twimg.com pbs.twimg.com video.twimg.com t.co mobile.twitter.com support.twitter.com syndication.twitter.com abs-0.twimg.com upload.twitter.com static.ads-twitter.com" -o1 -a2 -An -f-1 -a2 -Ar,s -o0+sm -a2 -At -r1+s --fake -1 --ttl 6 -a2 -An
#./ciadpi --port 1080 --ip 127.0.0.1 -a4 -o2 --auto=t,r,a,s -d2 -H:"telegram.org t.me web.telegram.org desktop.telegram.org macos.telegram.org telegram.me telegram.dog core.telegram.org tdesktop.com telegram.tips telegramusercontent.com webk.telegram.org k.telegram.org telesco.pe googlevideo.com youtu.be ggpht.com ytimg.com ggpht.com googleapis.com googleusercontent.com youtube.com cloudflare-ech.com cfl.re cloudflare-dns.com cloudflare-ech.com cloudflare-cn.com cloudflareanycast.net cloudflarechina.cn cloudflarecn.net cf-ipfs.com cloudflare-ipfs.com cloudflare.net cloudflare.com cloudflareresolve.com api.x.com twitter.com api.twitter.com api.tweetdeck.com abs.twimg.com pbs.twimg.com video.twimg.com t.co mobile.twitter.com support.twitter.com syndication.twitter.com abs-0.twimg.com upload.twitter.com static.ads-twitter.com" -o1 -a2 -An -f-1 -a2 -Ar,s -o0+sm -a2 -At -r1+s --fake -1 --ttl 6 -a2 -An
#Работают: Звонки в Telegram, What'sApp*, YouTube, Signal, X (Twitter с картинками только на WiFi), DuckDuckGo, Insta*
#Мобильный оператор: Билайн, Т2, Мегафон (P.S: на Билайне твиттер работает плоховато, на WiFi грузит хорошо)
#WiFi: Ростелеком
#DNS 1.1.1.1

#22 сен 2025
#./ciadpi --port 1080 --ip 127.0.0.1 -f6+nr -d2 -d11 -f9+hm -o3 -t7 -a1
#+Discord (voice,chat) Оператор: Билайн (Новгородская область)

#26 сен 2025
#./ciadpi --port 1080 --ip 127.0.0.1 -Ku -a3 -An -H:"googlevideo.com youtu.be ggpht.com ytimg.com i.ytimg.com i9.ytimg.com yt3.ggpht.com youtubei.googleapis.com wide-youtube.l.google.com nhacmp3youtube.com googleusercontent.com yt3.googleusercontent.com googleapis.com youtubei.googleapis.com" -n www.google.com -o1 -An -Kt,h -s1 -o1 -T5 -Ar -o1 -T5 -At -f-1 -r1+s -As -b+500 -n google.com -An
#Оператор: Домру/Ростелеком работает полностью, Мобильный МТС не пробивает Discord. (СПб/Краснодар)
#+YouTube
#+Discord (voice, chat)
#+SoundCloud 

#27 сен 2025
#./ciadpi --port 1080 --ip 127.0.0.1 -f6+nr -d2 -d11 -f9+hm -o3 -t7 -a2
#ВКонтакте официальный клиент  Оператор: Grameenphone Локация: Бангладеш

#./ciadpi --port 1080 --ip 127.0.0.1 -o1 -r-5+se -a1 -At,r,s -d1 -n google.com -Qr -f-1 -a1
#Youtube (vanced 19.47.53) Instagram (359.0.0.59.89)
#МТС Орёл DNS в ббд 8.8.8.8

#29 сен 2025  НЕ РАБ 22 окт!
#./ciadpi --port 1080 --ip 127.0.0.1 -Kt -H:"youtube.com manifest.googlevideo.com ggpht.com gvt1.com ytimg.com i3.ytimg.com i.ytimg.com i1.ytimg.com i2ytimg.com i4.ytimg.com i9.ytimg.com yt3.ggpht.com yt3.googleusercontent.com googlevideo.com play.google.com gvt2.com gvt3.com googleapis.com gstatic.com youtube-nocookie.com signaler-pa.youtube.com 1e100.net nhacmp3youtube.com google.com music.youtube.com youtu.be yt.be youtube-ui.l.google.com youtubeembeddedplayer.googleapis.com youtube.googleapis.com youtubei.googleapis.com yt-video-upload.l.google.com wide-youtube.l.google.com jnn-pa.googleapis.com wide-youtube.l.google.com" -d 9+s -s 25+s -As -r 1+h -t5
#Стратегия под клиент ревансед для просмотра youtube.
#Проверено на мобильных операторах : Yota (Мегафон) , MTC , Теле 2 в регионе ЮФО.
#DNS 8.8.8.8

#1 окт 2025 РАБ до 20 окт !!! НЕ РАБ 22 окт!
#./ciadpi --port 1080 --ip 127.0.0.1 -o1 -d1 -a1 -At,r,s -s1 -d1 -s5+s -s10+s -s15+s -s20+s -a1 -As -s1 -d1 -s5+s -s10+s -s12+s -s15+s -s20+s -d30+s -a1
#Работает оригинальный Ютуб в 2к  Dns: 1.1.1.1
#Провайдер: Т2 (остальных не проверял)

#НЕ РАБ
#./ciadpi --port 1080 --ip 127.0.0.1 -s1 -d1 -a1 -Y -Ar -d5 -o1+s -a1 -At -f-1 -r1+s -a1 -As -d1 -o1+s -s-1 -a1
#Работает ютуб и revanced + yt music
#Провайдер T2   Регион работы Москва Московская область

#НЕ РАБ 22 окт!
#./ciadpi --port 1080 --ip 127.0.0.1 -Ku -a3 -An -H:googlevideo.com -o1 -An -Qr -n dzen.ru -r3+s -S -At,s -d1 -s0+sm
#+YouTube/YT Music  +Instagram  +X(Twitter)

#3 окт 25 НЕ РАБ 22 окт!
#./ciadpi --port 1080 --ip 127.0.0.1 -H:"youtu.be ytimg.com ggpht.com googleapis.com googlevideo.com googleusercontent.com" -o1 -r-5+se -a1 -At,r,s -d1 -f-1 -n google.com -a1 -An -a2 -f-204 -n google.com -Qr -s1:5+sm -As -d1 -s3+s -s5+s -q7 -As -o2 -f-43 -As -r5 -Mh -s1:5+s -s3:7+sm —ip 127.0.0.1 —port 1080
#DNS: 8.8.8.8 Провайдер: Мегафон Работает Youtube , Discord (без войса), остальное не проверял Регион: Смоленская область

#4 окт РАБ не быстро  НЕ РАБ 22 окт!
#./ciadpi --port 1080 --ip 127.0.0.1 -Kt -H:"youtube.com manifest.googlevideo.com ggpht.com gvt1.com ytimg.com i3.ytimg.com i.ytimg.com i1.ytimg.com i2ytimg.com i4.ytimg.com i9.ytimg.com yt3.ggpht.com yt3.googleusercontent.com googlevideo.com play.google.com gvt2.com gvt3.com googleapis.com gstatic.com youtube-nocookie.com signaler-pa.youtube.com 1e100.net nhacmp3youtube.com google.com music.youtube.com youtu.be yt.be youtube-ui.l.google.com youtubeembeddedplayer.googleapis.com youtube.googleapis.com youtubei.googleapis.com yt-video-upload.l.google.com wide-youtube.l.google.com jnn-pa.googleapis.com wide-youtube.l.google.com" -d 9+s -s 25+s -t5 -At -q 20+s -r 1+h
#Редактирована по причине не отображения лого каналов. - относится к раннее выложеной стратегии от 29.09.2025г
#Проверено на мобильных операторах : Yota (Мегафон) , MTC , Теле 2 в регионе ЮФО. DNS 8.8.8.8

#5 окт  РАБ  НЕ РАБ 22 окт!
#./ciadpi --port 1080 --ip 127.0.0.1 -a4 -o2 --auto=t,r,a,s -d2 -H:"telegram.org t.me web.telegram.org desktop.telegram.org macos.telegram.org telegram.me telegram.dog core.telegram.org tdesktop.com telegram.tips telegramusercontent.com webk.telegram.org k.telegram.org telesco.pe googlevideo.com youtu.be ggpht.com ytimg.com ggpht.com googleapis.com googleusercontent.com youtube.com api.x.com twitter.com api.twitter.com api.tweetdeck.com abs.twimg.com pbs.twimg.com video.twimg.com t.co mobile.twitter.com support.twitter.com syndication.twitter.com abs-0.twimg.com upload.twitter.com static.ads-twitter.com" -o1 -a2 -An -f-1 -a2 -Ar,s -o0+sm -a2 -At -r1+s --fake -1 --ttl 6 -a2 -An
#Работают: Звонки в Telegram, What'sApp*, YouTube, Signal, DuckDuckGo  
#Мобильный оператор: Билайн, Т2, Мегафон, Т МОБАИЛ  WiFi: Ростелеком DNS 1.1.1.1

#8 окт НЕ РАБ!
#./ciadpi --port 1080 --ip 127.0.0.1 -d 2 -f 2 -a 3 -S -r 9 -n 3
#Работают: Звонки в Telegram*, YouTube, Discord (Voice + Chat)
#Мобильный оператор: Т2 (Обнинск) WiFi: Росстелеком (Обнинск) DNS 9.9.9.9  DNS over TLS : xbox-dns.ru

#9 окт НЕ РАБ
#./ciadpi --port 1080 --ip 127.0.0.1 -H:"googlevideo.com youtu.be ggpht.com ytimg.com ggpht.com googleapis.com googleusercontent.com youtube.com" -o1 -d1 -a1 -An -a2 -f-204 -n google.com -Qr -s1:5+sm -As -d1 -s3+s -s5+s -q7
#Работают:  YouTube, Discord (Voice + Chat) из того что проверил
#Мобильный оператор: Многострадальный МТС (Коми и ЮНАО)  DNS 1.1.1.1

#НЕ РАБ 22 окт
#./ciadpi --port 1080 --ip 127.0.0.1 -L 3 -o 2  -M h,d,r -Q rand -S -s h -d 2 -a 3
#Работают: Звонки в Telegram*, YouTube, Discord (Voice + Chat)
#Мобильный оператор: Т2 (Обнинск)
#WiFi: Ростелеком (Обнинск)

#10 окт  НЕ РАБ 22 окт!
#./ciadpi --port 1080 --ip 127.0.0.1 -o 2 -r 3+s -A t,r,s,n -n vk.com -r 3 -S
#Работают: YouTube, Discord (Voice + Chat)
#Мобильный оператор: Т2 (Обнинск)
#WiFi: Ростелеком (Обнинск) DNS 9.9.9.9

#12 окт  РАБ медл  НЕ РАБ 22 окт!
#./ciadpi --port 1080 --ip 127.0.0.1 -o 2 -r 3 -A t,r,s,n -r 3 -S
#Работают: YouTube, Discord (Voice + Chat)
#Мобильный оператор: Т2 (Обнинск)

#15 окт НЕ РАБ 22 окт!
#./ciadpi --port 1080 --ip 127.0.0.1 -H:"dis.gd discord-attachments-uploads-prd.storage.googleapis.com discord.app discord.co discord.com discord.design discord.dev discord.gift discord.gifts discord.gg discord.media discord.new discord.store discordapp.com discordcdn.com discordmerch.com discordpartygames.com discordsays.com discordsez.com discord-activities.com discordactivities.com stable.dl2.discordapp.net" -d6+s -q4+hm -o2 -a1 -An -a4 -o2 --auto=t,r,a,s -d2 -H:"telegram.org t.me web.telegram.org desktop.telegram.org macos.telegram.org telegram.me telegram.dog core.telegram.org tdesktop.com telegram.tips telegramusercontent.com webk.telegram.org k.telegram.org telesco.pe youtube.com youtu.be yt.be googlevideo.com ytimg.com ggpht.com gvt1.com youtube-nocookie.com youtube-ui.l.google.com youtubeembeddedplayer.googleapis.com youtube.googleapis.com youtubei.googleapis.com yt-video-upload.l.google.com wide-youtube.l.google.com  cloudflare-ech.com cfl.re cloudflare-dns.com cloudflare-ech.com cloudflare-cn.com cloudflareanycast.net cloudflarechina.cn cloudflarecn.net cf-ipfs.com cloudflare-ipfs.com cloudflare.net cloudflare.com cloudflareresolve.com api.x.com twitter.com api.twitter.com api.tweetdeck.com abs.twimg.com pbs.twimg.com video.twimg.com t.co mobile.twitter.com support.twitter.com syndication.twitter.com abs-0.twimg.com upload.twitter.com static.ads-twitter.com" -o1 -a2 -An -f-1 -a2 -Ar,s -o0+sm -a2 -At -r1+s --fake -1 --ttl 6 -a2 -An
#Проводной провайдер - Планета (Екатеринбург и окраины)  /  Сотовый провайдер - Мегафон (Екб)

#17 окт, РАБ с 20 окт! НЕ РАБ с 22 окт!
#./ciadpi --port 1080 --ip 127.0.0.1 -o2 -r 3+s -A t,r,s,n -n ok.ru -d3:5+s -r 3:10000 -S
#Мобильный оператор: Т2 (Обнинск) WiFi: Ростелеком (Обнинск)

#НЕ РАБ 20 окт!
#./ciadpi --port 1080 --ip 127.0.0.1 -a 2 -d3:10000+s -o2 -L 3 -M h,d,r -Q rand -S -s h -n ok.ru
#Мобильный оператор: Т2 (Обнинск) WiFi: Ростелеком (Обнинск)

#LOR от 25 июл НЕ РАБ 22 окт
#./ciadpi --port 1080 --ip 127.0.0.1 --oob 1 --split 2 --mod-http h,d --auto torst --fake -1 --tlsrec 3+s --md5sig --auto none --debug 1

#24 окт НЕ РАБ
#./ciadpi --port 1080 --ip 127.0.0.1 -o 2 --auto=t,r,a,s -d3 -r 3
#Работают: YouTube, Discord (Chat +Voice*)
#Мобильный оператор: Т2 (Обнинск)

#РАБ (не раб bestch)
#./ciadpi --port 1080 --ip 127.0.0.1 -H:"cryptomat.cc youtube.com youtu.be ggpht.com ytimg.com l.google.com play.google.com nhacmp3youtube.com googleusercontent.com googleapis.com googlevideo.com 1e100.net" -o1 -a2 -An -n google.com -Qr -f-204 -s1:5+sm -a1 -As -d1 -s3+s -s5+s -q7 -a1 -As -o2 -f-43 -a1 -As -r5 -Mh -s1:5+s -s3:7+sm -a1

#./ciadpi --port 1080 --ip 127.0.0.1 -n video.vk.com -Qr -f-270 -T2000 --auto=t,r,a,s -s1:5+sm -a2 -As -d1 -s3+s -s5+s -q7 -a2 -As -o2 -f-43 -a2 -As -r5 -Mh -s1:5+s -s3:7+sm -a2 -As -Ku -a1 -An -d1 -s1+s -d3+s -s6+s -d9+s -s12+s -d15+s -s20+s -d25+s -s30+s -d35+s -At,r,s -s1 -q1 -At,r,s -s5 -o2 -At,r,s -o1 -d1 -r1+s -s1+s -d3+s -At,r,s -f-1 -r1+s -At,r,s -s1 -o1+s -s-1

#./ciadpi --port 1080 --ip 127.0.0.1 -a2 -s4+sn -r9+s -Q rand -n gosuslugi.ru -S

#НЕ РАБ
#./ciadpi --port 1080 --ip 127.0.0.1 -o 2 --auto=t,r,a,s -d3
#Работают: YouTube, Discord (Chat +Voice*)
#Мобильный оператор: Т2 (Обнинск)

#6 ноя НЕ РАБ
#./ciadpi --port 1080 --ip 127.0.0.1 -a2 -H:"youtube.com (https://youtube.com/) youtu.be (https://youtu.be/) ggpht.com (https://ggpht.com/) ytimg.com (https://ytimg.com/) l.google.com (https://l.google.com/) play.google.com (https://play.google.com/) nhacmp3youtube.com (https://nhacmp3youtube.com/) googleusercontent.com (https://googleusercontent.com/) googleapis.com (https://googleapis.com/) googlevideo.com (https://googlevideo.com/) 1e100.net (https://1e100.net/)" -o1 -An -j:"173.245.48.0/20 103.21.244.0/22 103.22.200.0/22 103.31.4.0/22 141.101.64.0/18 108.162.192.0/18 190.93.240.0/20 188.114.96.0/20 197.234.240.0/22 198.41.128.0/17 162.158.0.0/15 104.16.0.0/13 104.24.0.0/14 172.64.0.0/13 131.0.72.0/22" -f2+nm+h -t3 -An -o1+hm
#Wifi domru Омск

#10 ноя РАБ ХОР!
#./ciadpi --port 1080 --ip 127.0.0.1 -a4 -o2 --auto=t,r,a,s -d2 -o1 -a2 -An -f-1 -a2 -Ar,s -o0+sm -a2 -At -r1+s -a2 --fake -1 --ttl 10 -a2 -An
#Операторы: Ростелеком(Т2), МТС   DNS:  94.140.14.14  ByeByeDPI 1.6.7

#4дек
#-s2+se -s2+sh -d3+s -s3+he -a3 -s3+sm -r3+s -s3+se -f3+s -d4+s -d5 -s5+s -f6 -s6 -d6 -s6+s -s6+sh -d8+s -r8+s -s8+s -s9+s -f9+s -s14 -s15+s -s15+s -s16+s -O3 -Qr -n vk.com -t5
#Работает: Roblox, YouTube, Discord   WI-FI: Ростелеком (Wi-Fi, Обнинск)  Мобильные данные: Т2, Мегафон, Йота
#DNS: 9.9.9.9, 8.8.8.8 (желательно на мегафоне)

#-H:"youtube.com youtu.be ggpht.com ytimg.com l.google.com play.google.com nhacmp3youtube.com googleusercontent.com googleapis.com googlevideo.com wide-youtube.l.google.com" -o1 -An -f1+nme -t6
#Youtube, Discord (войс не пробовал), X (Twitter), Telegram, WhatsApp, Cloudflare...
#Домашний интернет Ростелеком г. Барнаул.  DNS: 8.8.8.8/1.1.1.1

#5 дек
#-n google.com -Qr -f-204 -a1 -As -s1:3+sm -a1 -As -s5:8+sm -a1 -As -d3 -q7 -o2 -f-43 -f-80 -f-160 -r5 -Mh -As
#в Новосибирской области, работает на МТС (мобильный интернет), Ростелеком и Новотелеком (Электронный город)
#поставьте DNS в настройках телефона от гугл (например dns.google)

#9 дек
#-Ku -H:"css.rbxcdn.com images.rbxcdn.com notifications.roblox.com locale.roblox.com tr.rbxcdn.com games.roblox.com followings.roblox.com thumbnails.roblox.com economy.roblox.com privatemessages.roblox.com badges.roblox.com apis.roblox.com static.rbxcdn.com friends.roblox.com presence.roblox.com voice.roblox.com trades.roblox.com js.rbxcdn.com" -a4 -d5:3:1 -An -s-3 -a3 -d5 -q3+sm -r1+h -At -s-1 -o-2 -b2500 -At,s -s3:5:1 -d1:3:5+h -As -f-1 -o2 -b2500 -R1-7
#ROBLOX / РАБОТАЕТ НА ДОМАШНЕМ ИНТЕРНЕТЕ - ЧЕРЕЗ WIFI
#ByeByeDPIv1.6.1 ByeDPIv0.17.2  DNS:8.8.8.8  Провайдер: Дом ру ЮФО  DNS: dns.google  системно (роутер) DOT

#10 дек РАБ ХОР!
#./ciadpi --port 1080 --ip 127.0.0.1 -d1+s -s50+s -a1 -As -f20 -r2+s -a1 -At -d2 -s1+s -s5+s -s10+s -s15+s -s25+s -s35+s -s50+s -s60+s -a1
#Роблокс(через жопу, не быть звука) / Работает через WiFi

#23 дек РАБ, НО СБОИТ
#./ciadpi --port 1080 --ip 127.0.0.1 -s2 -d3 -s3 -a3 -r3 -q3+s -d3 -d4 -d5 -s5 -d6 -q6+s -s6 -d8 -r8 -s8 -s9 -s14 -s15 -s16 -Qr

#28 дек РАБ, но СБОИТ
#./ciadpi --port 1080 --ip 127.0.0.1 -s2+se -s2+sh -d3+s -s3+he -a3 -s3+sm -r3+s -s3+se -f3+s -d4+s -d5 -s5+s -f6 -s6 -d6 -s6+s -s6+sh -d8+s -r8+s -s8+s -s9+s -f9+s -s14 -s15+s -s15+s -s16+s -O3 -Qr -n vk.com -t5
#./ciadpi --port 1080 --ip 127.0.0.1 -s2 -d3 -s3 -a3 -r3 -q3+s -d3 -d4 -d5 -s5 -d6 -q6+s -s6 -d8 -r8 -s8 -s9 -s14 -s15 -s16 -Qr
#./ciadpi --port 1080 --ip 127.0.0.1 -d1 -d3+s -s6+s -d9+s -s12+s -d15+s -s20+s -d25+s -s30+s -d35+s -r1+s -a1 -As -d1 -d3+s -s6+s -d9+s -s12+s -d15+s -s20+s -d25+s -s30+s -d35+s -a1

#29 дек РАБ, НО СБОИТ [v]
#./ciadpi --port 1080 --ip 127.0.0.1 -o1 -d1 -a1 -As -d1 -s7:5+s -s1:6+s -a1 -As -s1 -d3+s -s7+s -s15+s -s20+s -a1 -s1 -d2+s -d5+s -s7+s -d12+s -d15+s -q20+s -s30+s -s50+s -s55-s -a1 -At,r,s -r1 -s8:3+s -a1 -As -f3 -s2:4+s -s6:9+s -s5:11+s -a1

#5 янв
#./ciadpi --port 1080 --ip 127.0.0.1 -o1 -o25+s -T3 at

#10 янв
#./ciadpi --port 1080 --ip 127.0.0.1 -a3 -f300+sm -f200+sm -Qr -Qr -r-1+sm -o20+sm -o25+s -s6:6+sm -d4:7+s -As -q3:5+h -f200+h -s3:7+sm -d5:4+sm -Qr -Y -f-1 -t15 -As -R1-4
#./ciadpi --port 1080 --ip 127.0.0.1 -Ku -a3 -An -q2 -s2 -s3+s -r3 -s4 -r4 -s5+s -r5+s -s6 -s7+s -r8 -s9+s -Qr -Mh,d,r -At,r -s2+s -r2 -d2 -s3 -r3 -r4 -s4 -d5+s -r5 -d6 -s7+s -d7

#11 янв
#./ciadpi --port 1080 --ip 127.0.0.1 -a3 -r-1+s -o20+sm -s3:7+sm -d5:3+sm -f300+s -Qr -Y -f-1 -As

#13 янв
#./ciadpi --port 1080 --ip 127.0.0.1 -f1+nme -t6 -As -n googlevideo.com -Qr -s1:6+sm -a1 -As -s5:12+sm -a1 -As -d3 -q7 -r6 -Mh -As

# РАБ [ok]
#./ciadpi --port 1080 --ip 127.0.0.1 -a3 -r-1+s -o20+sm -s3:7+sm -d5:3+sm -f300+s -Qr -Y -f-1 -As -t 5

#15 янв РАБ [v]
#./ciadpi --port 1080 --ip 127.0.0.1 --udp-fake 1 -d1 -s1+s -r1+s -e1 -m1 -o1+s -f-1 -t2 -a1

#16 янв НЕ РАБ
#./ciadpi --port 1080 --ip 127.0.0.1 -H:"chat-fallback.fura1-1.fna.whatsapp.net" -s25 -r5+s -s25+s -a50 -At,r,s -s50 -r5+s -s50+s -a100

#20 янв НЕ РАБ
#./ciadpi --port 1080 --ip 127.0.0.1 -n ya.ru -Qr -m2 -f-1 -d7 -a1

#23 янв РАБ?
#./ciadpi --port 1080 --ip 127.0.0.1 -Kt -d3 -An -d1+s -Ar -f-3 -n vk.com -q1 -Qr -t12 -As -f-5 -r1+s -t15 -S -n google.com -Ku -a5 -An

#25 янв
#./ciadpi --port 1080 --ip 127.0.0.1 -H:"sonar.fura2-1.fna.fbcdn.net video.fura2-1.fna.whatsapp.net scontent.fura2-1.fna.fbcdn.net static.fura2-1.fna.whatsapp.net sonar.fura2-1.fna.whatsapp.net dit.fura2-1.fna.whatsapp.net mmx-ds.fura2-1.fna.whatsapp.net media.fura3-1.fna.whatsapp.net mmi.fura2-1.fna.whatsapp.net media.fura1-1.fna.whatsapp.net media.fkhi3-1.fna.whatsapp.net chat.fura2-1.fna.whatsapp.net media.fura2-1.fna.whatsapp.net pps.fura1-1.fna.whatsapp.net" -s25 -r5+s -s25+s -a50 -Ar -s50 -r5+s -s50+s -a100

#28 янв [ok]
#./ciadpi --port 1080 --ip 127.0.0.1 -a2 -H:"youtube.com youtu.be ggpht.com ytimg.com googleusercontent.com googleapis.com googlevideo.com discord.com discord.gg discord.app discord.media discord.gift discord.store modrinth.com telegram.org t.me web.telegram.org cloudflare.com cloudflare-dns.com twitter.com x.com t.co telesco.pe" -o1 -An -j:"173.245.48.0/20 103.21.244.0/22 103.22.200.0/22 103.31.4.0/22 141.101.64.0/18 108.162.192.0/18 190.93.240.0/20 188.114.96.0/20 197.234.240.0/22 198.41.128.0/17 162.158.0.0/15 104.16.0.0/13 104.24.0.0/14 172.64.0.0/13 131.0.72.0/22" -f2+nm+h -t3 -An -o1+hm

#29 янв [ok+]
#./ciadpi --port 1080 --ip 127.0.0.1 -a4 -o2 --auto=t,r,a,s -d2 -H:"withpersona.com cdn.withpersona.com telegram.org t.me web.telegram.org desktop.telegram.org macos.telegram.org telegram.me telegram.dog core.telegram.org tdesktop.com telegram.tips telegramusercontent.com webk.telegram.org k.telegram.org telesco.pe googlevideo.com youtu.be ggpht.com ytimg.com ggpht.com googleapis.com googleusercontent.com youtube.com cloudflare-ech.com cfl.re cloudflare-dns.com cloudflare-ech.com cloudflare-cn.com cloudflareanycast.net cloudflarechina.cn cloudflarecn.net cf-ipfs.com cloudflare-ipfs.com cloudflare.net cloudflare.com cloudflareresolve.com api.x.com twitter.com api.twitter.com whatsapp.net whatsapp.com wa.me chat.whatsapp.com mmg.whatsapp.net pps.whatsapp.net call.whatsapp.com static.whatsapp.net v.whatsapp.net" -o1 -a2 -An -f-1 -a2 -Ar,s -o0+sm -a2 -At -r1+s --fake -1 --ttl 6 -a2 -An

#4 фев [ok]
#./ciadpi --port 1080 --ip 127.0.0.1 -f-1+sm -t7 -a5 -m2

#8 фев. Провайдер: Твинтел Юг(Wi-fi)
#./ciadpi --port 1080 --ip 127.0.0.1 -f350 -Qr -f-1+sh -t6 -Qr -a4 -m3 -n wb.ru

#11 фев. Мобильный МТС [ok]
#./ciadpi --port 1080 --ip 127.0.0.1 -a2 -H:"youtube.com youtu.be ggpht.com ytimg.com googleusercontent.com googleapis.com googlevideo.com discord.com discord.gg discord.app discord.media discord.gift discord.store modrinth.com telegram.org t.me web.telegram.org cloudflare.com cloudflare-dns.com twitter.com x.com t.co telesco.pe" -o1 -An -j:"173.245.48.0/20 103.21.244.0/22 103.22.200.0/22 103.31.4.0/22 141.101.64.0/18 108.162.192.0/18 190.93.240.0/20 188.114.96.0/20 197.234.240.0/22 198.41.128.0/17 162.158.0.0/15 104.16.0.0/13 104.24.0.0/14 172.64.0.0/13 131.0.72.0/22" -f2+nmh -t3 -An -o1+hm

#16 фев НЕ РАБ
#./ciadpi --port 1080 --ip 127.0.0.1 -s1 -f2+nmh -o1 -Ar -r1 -H:"youtube.com googlevideo.com ytimg.com ggpht.com youtu.be"

#22 фев  ВОЗМ
#./ciadpi --port 1080 --ip 127.0.0.1 -H:"youtube.com youtu.be ggpht.com ytimg.com googleusercontent.com googleapis.com googlevideo.com discord.com discord.gg discord.app discord.media discord.gift discord.store modrinth.com telegram.org t.me web.telegram.org cloudflare.com cloudflare-dns.com twitter.com x.com t.co telesco.pesonar.fura2-1.fna.fbcdn.net video.fura2-1.fna.whatsapp.net scontent.fura2-1.fna.fbcdn.net static.fura2-1.fna.whatsapp.net sonar.fura2-1.fna.whatsapp.net dit.fura2-1.fna.whatsapp.net mmx-ds.fura2-1.fna.whatsapp.net media.fura3-1.fna.whatsapp.net mmi.fura2-1.fna.whatsapp.net media.fura1-1.fna.whatsapp.net media.fkhi3-1.fna.whatsapp.net chat.fura2-1.fna.whatsapp.net media.fura2-1.fna.whatsapp.net pps.fura1-1.fna.whatsapp.net c.ns.whatsapp.net b.ns.whatsapp.net a.ns.whatsapp.net l.google.com play.google.com nhacmp3youtube.com googleusercontent.com googleapis.com d.ns.whatsapp.net googlevideo.com wide-youtube.l.google.com" -o1 -An -j:"173.245.48.0/20 103.21.244.0/22 103.22.200.0/22 103.31.4.0/22 141.101.64.0/18 108.162.192.0/18 190.93.240.0/20 188.114.96.0/20 197.234.240.0/22 198.41.128.0/17 162.158.0.0/15 104.16.0.0/13 104.24.0.0/14 172.64.0.0/13 131.0.72.0/22" -o1 -An -f1+nme -t6

#23 фев НЕ РАБ
#./ciadpi --port 1080 --ip 127.0.0.1 -d1 -s0+s -d3+s -s6+s -d9+s -s12+s -d15+s -s20+s -d25+s -s30+s -d35+s -At,r,s -f-1 -a1 -At,r,s -d1:11+sm -S -a1 -At,r,s -n okcdn.ru -Qr -f1 -d1:11+sm -s1:11+sm -S -a1

#8 марта [ok++]
#./ciadpi --port 1080 --ip 127.0.0.1 -a6 -r3 -o20 -s2+s -f-1 -t4 -a7 -n vk.com -Qr

#14 марта [ok-]
#./ciadpi --port 1080 --ip 127.0.0.1 -f-1 -t8 -n www.google.com -s1+s -a5

#18 мар
#./ciadpi --port 1080 --ip 127.0.0.1 -H:"youtube.com youtu.be ggpht.com ytimg.com l.google.com play.google.com nhacmp3youtube.com googleusercontent.com googleapis.com googlevideo.com" -o1 -An -f-200 -s2 -s5+hm -Qr -n yandex.ru

#19 мар
#./ciadpi --port 1080 --ip 127.0.0.1 --tlsrec 1+s --split 1+s --disorder 3+s -a2 -An

#19 мар [ok]
#./ciadpi --port 1080 --ip 127.0.0.1 --fake -1 --ttl 8 --split 1+s --disorder 3+s -a2 -An

#21 мар [no--]
#./ciadpi --port 1080 --ip 127.0.0.1 -H:"youtube.com youtu.be youtubei.googleapis.com ggpht.com ytimg.com i.ytimg.com googleusercontent.com googleapis.com android.clients.google.com clients4.google.com googlevideo.com redirector.googlevideo.com r1---sn.googlevideo.com rr1---sn.googlevideo.com discord.com discord.gg discord.app discord.media discord.gift discord.store modrinth.com telegram.org t.me web.telegram.org cloudflare.com cloudflare-dns.com twitter.com x.com t.co l.google.com play.google.com wide-youtube.l.google.com" -o1 -An -j:"173.245.48.0/20 103.21.244.0/22 103.22.200.0/22 103.31.4.0/22 141.101.64.0/18 108.162.192.0/18 190.93.240.0/20 188.114.96.0/20 197.234.240.0/22 198.41.128.0/17 162.158.0.0/15 104.16.0.0/13 104.24.0.0/14 172.64.0.0/13 131.0.72.0/22" -o1 -An -f1+nme -t6

#21 мар [ok+-]
#./ciadpi --port 1080 --ip 127.0.0.1 -a2 -H:"youtube.com youtu.be ggpht.com ytimg.com googleusercontent.com googleapis.com googlevideo.com discord.com discord.gg discord.app discord.media discord.gift discord.store modrinth.com cloudflare.com cloudflare-dns.com twitter.com x.com telegram.org core.telegram.org web.telegram.org webk.telegram.org my.telegram.org translations.telegram.org instantview.telegram.org blog.telegram.org comments.telegram.org verify.telegram.org login.telegram.org auth.telegram.org api.telegram.org promo.telegram.org desktop.telegram.org macos.telegram.org ios.telegram.org android.telegram.org reactions.telegram.org claims.telegram.org x.telegram.org help.telegram.org docs.telegram.org schema.telegram.org dev.telegram.org contest.telegram.org premium.telegram.org settings.telegram.org qr.telegram.org stickers.telegram.org emoji.telegram.org themes.telegram.org donate.telegram.org fragment.telegram.org ton.telegram.org wallet.telegram.org pay.telegram.org telegram.me telegram.dog telegra.ph graph.org telesco.pe web.telegram.me ws1.web.telegram.org ws2.web.telegram.org ws4.web.telegram.org ws5.web.telegram.org zws1.web.telegram.org zws2.web.telegram.org zws1.web.telegram.me zws2.web.telegram.me venus.web.telegram.org pluto.web.telegram.org aurora.web.telegram.org vesta.web.telegram.org t.me proxy.mtpproto.network mtproxy.dev mtproxy.app voice.telegram.org mmg.telegram.net cdn.telegram.org tgcdn.net" -o1 -An -j:"173.245.48.0/20 103.21.244.0/22 103.22.200.0/22 103.31.4.0/22 141.101.64.0/18 108.162.192.0/18 190.93.240.0/20 188.114.96.0/20 197.234.240.0/22 198.41.128.0/17 162.158.0.0/15 104.16.0.0/13 104.24.0.0/14 172.64.0.0/13 131.0.72.0/22" -f2+nmh -t3 -An -o1+hm

#30 мар [ok+-]
#./ciadpi --port 1080 --ip 127.0.0.1 -o2 -O4 -s1 -q1 -Ar -s5 -o1+s -f 1+s -r 20+s

#31 мар [no---]
#./ciadpi --port 1080 --ip 127.0.0.1 -Ku -a3 -l:"\xe3\x00\x06\xec\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00" -An -f64+se -t5 -n "????#.mail.ru" -At,r,s -An

#7 апр [no---]
#./ciadpi --port 1080 --ip 127.0.0.1 -l':\xC2\x00\x00\x00\x01\x14\x2E\xE3\xE3\x5F\x6B\xBB\x23\xA8\xE6\x5D\xA9\x78\x21\xCF\xC2\x72\x4C\x8F\xC4\x5E\x14\x00\x00\x00\x00\xC5\x00\x00\x00\x00\x4C\x00\xA7\x00\x00\x00\x00\x00\x00\x44\x00\x00\x80\x00\x00\x00\x0D\xFC\xFA\x1D\xCD\x73\xBA\x2A\x90\x93\xB3\xEE\xF7\x43\xC5\x85\xDA\xFF\x45\x3C\x00\x00\x00\x00\x00\x00\x7C\x00\x9B\x00\xF6\x00\x00\xDD\x00\x00\x00\x00\x00\x00\x00\x00\x00\x59\xA8\xE4\x00\x00\x00\x00\x00\x00\x00\x00\x7B\x00\x0F\x00\x00\x00\x48\x4E\x00\x00\x00\x06\xF3\x00\x00\x00\x00\xD9\x5A\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00' -a3 -t12 -d1 -s0+h -d3+s -s6+s -d5+s -s8+s -d7+s -s10+s -d3 -At,s -r3

#16 апр [ok+++]
#./ciadpi --port 1080 --ip 127.0.0.1 -a2 -o1 -s4 -s6

#7 мая [ok++до 17 мая]
#./ciadpi --port 1080 --ip 127.0.0.1 -a2 -m4 -s+sm

#11 мая [ok++до 28 мая]
#./ciadpi --port 1080 --ip 127.0.0.1 -Ku -a5 -An -Kt -V443 -H:googlevideo.com -n rutube.ru -o1 -An -f-1 -T0.5 -Ars -d0+sm -At -r1+s

#12 мая (лютый) (--)
#./ciadpi --port 1080 --ip 127.0.0.1 -l':\xC2\x00\x00\x00\x01\x14\x2E\xE3\xE3\x5F\x6B\xBB\x23\xA8\xE6\x5D\xA9\x78\x21\xCF\xC2\x72\x4C\x8F\xC4\x5E\x14\x00\x00\x00\x00\xC5\x00\x00\x00\x00\x4C\x00\xA7\x00\x00\x00\x00\x00\x00\x44\x00\x00\x80\x00\x00\x00\x0D\xFC\xFA\x1D\xCD\x73\xBA\x2A\x90\x93\xB3\xEE\xF7\x43\xC5\x85\xDA\xFF\x45\x3C\x00\x00\x00\x00\x00\x00\x7C\x00\x9B\x00\xF6\x00\x00\xDD\x00\x00\x00\x00\x00\x00\x00\x00\x00\x59\xA8\xE4\x00\x00\x00\x00\x00\x00\x00\x00\x7B\x00\x0F\x00\x00\x00\x48\x4E\x00\x00\x00\x06\xF3\x00\x00\x00\x00\xD9\x5A\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00' -a3 -t12 -d1 -s0+h -d3+s -s6+s -d5+s -s8+s -d7+s -s10+s -d3 -At,s -R4 -r3 -o2 -d9 -s12

#28 мая (+-)
#./ciadpi --port 1080 --ip 127.0.0.1 -o1 -a1 -r-5+se

#(++-)
#./ciadpi --port 1080 --ip 127.0.0.1 -H":googleapis.com" -s1 -r1+s -An -H":ggpht.com googlevideo.com youtube.com youtu.be ytimg.com" -o1 -r-5+se

#(--)
#./ciadpi --port 1080 --ip 127.0.0.1 -o1 -s5:8+sm -d3:6 -r-3 -a4

#(bad)
#./ciadpi --port 1080 --ip 127.0.0.1 -d2 -d3+s -s6+s -d9+s -s12+s -d14+s -s20+s -d25+s -s30+s -d35+s -r1+s -S -a2 -Qr -H:"youtube.com youtu.be ggpht.com ytimg.com googleusercontent.com googleapis.com googlevideo.com discord.com discord.gg discord.app discord.media discord.gift discord.store modrinth.com telegram.org t.me web.telegram.org cloudflare.com cloudflare-dns.com twitter.com x.com t.co telesco.pe media.fura1-1.fna.whatsapp.net media.fura2-1.fna.whatsapp.net media.fura3-1.fna.whatsapp.net media.fkhi3-1.fna.whatsapp.net static.fura1-1.fna.whatsapp.net mmx-ds.fura1-1.fna.whatsapp.net video.fura1-1.fna.whatsapp.net pps.fura1-1.fna.whatsapp.net scontent.fura1-1.fna.whatsapp.net sonar.fura1-1.fna.whatsapp.net dit.fura1-1.fna.whatsapp.net mmi.fura1-1.fna.whatsapp.net chat.fura1-1.fna.whatsapp.net chat-fallback.fura1-1.fna.whatsоapp.net" -o2 -An -j:"173.245.48.0/20 103.21.244.0/22 103.22.200.0/22 103.31.4.0/22 141.101.64.0/18 108.162.192.0/18 190.93.240.0/20 188.114.96.0/20 197.234.240.0/22 198.41.128.0/17 162.158.0.0/15 104.16.0.0/13 104.24.0.0/14 172.64.0.0/13 131.0.72.0/22" -f2+nmh -t3 -An -o1+hm -As -d1 -d3+s -s6+s -d9+s -s12+s -d15+s -s20+s -d25+s -s30+s -d35+s -S -a1 -o1 -o25+s -T3 -At -At -n google.com -a5 -f-2 -s1+sm -d8+s -s5+sm -o1 -As -r1+s -d8+s -n video.vk.com -Qr -f-270 -T2000 --auto=t,r,a,s -s1:5+sm -a2 -As -d1 -s3+s -s5+s -q7 -a2 -As -o2 -f-43 -a2 -As -r5 -Mh -s1:5+s -s3:7+sm -a2 -As -Ku -a1 -An -d1 -s1+s --fake -1 --ttl 8 --split 1+s --disorder 3+s -a2 -An -d3+s -s6+s -d9+s -s12+s -d15+s -s20+s -d25+s -s30+s -d35+s -At,r,s -s1 -q1 -At,r,s -s5 -o2 -At,r,s -o1 -d1 -r1+s -s1+s -d3+s -At,r,s -f-1 -r1+s -At,r,s -s1 -o1+s -s-1

#29 мая (bad)
#./ciadpi --port 1080 --ip 127.0.0.1 -s1 -q2 -a3 -Y -q1 -s1+s -L1 -o2 -At,r -f-2 -n www.ya.ru -r1 -At,r -s1 -q1+sh -s-1 -a3

#(+--)
#./ciadpi --port 1080 --ip 127.0.0.1 -m4 -a2 -s5+s -s35+s

#(---both)
#./ciadpi --port 1080 --ip 127.0.0.1 -d1+s -O1 -s29+s -t5 -An -Ku -a5 -d80+s -d443+s

#(++)
#./ciadpi --port 1080 --ip 127.0.0.1 -Ku -l:\xC2\x00\x00\x00\x01\x14\x2E\xE3\xE3\x5F\x6B\xBB\x23\xA8\xE6\x5D\xA9\x78\x21\xCF\xC2\x72\x4C\x8F\xC4\x5E\x14\x00\x00\x00\x00\xC5\x00\x00\x00\x00\x4C\x00\xA7\x00\x00\x00\x00\x00\x00\x44\x00\x00\x80\x00\x00\x00\x0D\xFC\xFA\x1D\xCD\x73\xBA\x2A\x90\x93\xB3\xEE\xF7\x43\xC5\x85\xDA\xFF\x45\x3C\x00\x00\x00\x00\x00\x00\x7C\x00\x9B\x00\xF6\x00\x00\xDD\x00\x00\x00\x00\x00\x00\x00\x00\x00\x59\xA8\xE4\x00\x00\x00\x00\x00\x00\x00\x00\x7B\x00\x0F\x00\x00\x00\x48\x4E\x00\x00\x00\x06\xF3\x00\x00\x00\x00\xD9\x5A\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00 -a3 -An -o1 -d1 -r1+s -t10 -b4000 -s1+s -s3+s -s6+s -s9+s -s12+s -s15+s -s20+s -s30+s -As -q1+s -s29+s -o5+s -f3 -S -As -d1+s -s3+s -d5+s -s7+s -r2+s -Mh,d -An

#30 мая (++)
#./ciadpi --port 1080 --ip 127.0.0.1 -Ku -a5 -An -H":ggpht.com googlevideo.com youtube.com youtu.be ytimg.com" -o1 -r-5+se -An -f-1 -T0.5 -Ars -d0+sm -At -r1+s -An

#(++++) [v]
#./ciadpi --port 1080 --ip 127.0.0.1 -Ku -a5 -An -H:"youtube.com youtu.be ggpht.com ytimg.com l.google.com play.google.com googleusercontent.com googleapis.com googlevideo.com www.youtube.com" -o1 -s1 -r1+s -r-5+se

#(+++-)
#./ciadpi --port 1080 --ip 127.0.0.1 -Ku -a5 -An -H:"youtube.com googlevideo.com ggpht.com ytimg.com googleapis.com googleusercontent.com cloudflare.com cloudflare.dev workers.dev nhacmp3youtube.com" -o1 -s1+s -s2+s -s5+s -r-5+se

#(---both)
#./ciadpi --port 1080 --ip 127.0.0.1 -d1 -s1+s -s3+s -s6+s -s9+s -s12+s -s15+s -s20+s -s30+s -r1+s -a1

#31 мая (++-)
#./ciadpi --port 1080 --ip 127.0.0.1 -H:"youtube.com googlevideo.com ggpht.com ytimg.com googleapis.com googleusercontent.com" -o1 -s1+s -s2+s -s5+s -r-5+se -An -f-200 -s2 -s5+hm -t6 -Qr -n wb.ru

#(+-)
#./ciadpi --port 1080 --ip 127.0.0.1 -H:"googleapis.com" -s1 -r1+s -An -H:"ggpht.com googlevideo.com youtube.com youtu.be ytimg.com" -o1 -r-5+se

#1 июн (--)
#./ciadpi --port 1080 --ip 127.0.0.1 -o2 -s5 -f3 -s3 -d1 -s4 -f5 -s6 -d2 -f3 -s7 -d4 -s8 -d2 -s6 -d3 -f4 -s5 -d8 -s-2 -d9 -a1 -r1+s -q1

#3 июн (--)
#./ciadpi --port 1080 --ip 127.0.0.1 -s1 -q1 -a1 -Y -At -a1 -S -f-1 -r1+s -a1 -As -d1+s -O1 -s29+s -a1

#4 июн (--)
#./ciadpi --port 1080 --ip 127.0.0.1 -f1+nme -t6 -As -Qr -s1:6+sm -a1 -As -s5:12+sm -a1 -As -d3 -q7 -r6 -Mh

#7 июн (++но медл)
#./ciadpi --port 1080 --ip 127.0.0.1 -H:"youtube.com googlevideo.com ggpht.com ytimg.com googleapis.com googleusercontent.com youtube-ui.l.google.com yt4.ggpht.com" -o1 -a1 -r-5+se -t6 -n rutube.com -An -H:"cdn.discordapp.com canary.discord.comvdis.gd ptb.discord.com discord-attachments-uploads-prd storage.googleapis.com discord-activities.com discord.co discord.com discord.design discord.dev discord.gg discord.gift discord.gifts discord.media discord.new discord.store discord.tools discordactivities.com discordapp.com discordapp.net media.discordapp.net images-ext-1.discordapp.net images-ext-2.discordapp.net stable.dl2.discordapp.net discordcdn.com discordmerch.com discordpartygames.com discordsays.com discordsez.com discordstatus.com" -f-1 -t8 -n www.google.com -s1+s -a5 -An -H:"soundcloud.com sndcdn.com soundcloud.app.goo.gl" -f-1 -T0.5 -Ars -d0+sm -At -r1+s -An -f-200 -s2 -s5+hm -t6 -Qr -n wb.ru

#10 июн (ошибка)
#./ciadpi --port 1080 --ip 127.0.0.1 -l':\xC2\x00\x00\x00\x01\x14\x2E\xE3\xE3\x5F\x6B\xBB\x23\xA8\xE6\x5D\xA9\x78\x21\xCF\xC2\x72\x4C\x8F\xC4\x5E\x14\x00\x00\x00\x00\xC5\x00\x00\x00\x00\x4C\x00\xA7\x00\x00\x00\x00\x00\x00\x44\x00\x00\x80\x00\x00\x00\x0D\xFC\xFA\x1D\xCD\x73\xBA\x2A\x90\x93\xB3\xEE\xF7\x43\xC5\x85\xDA\xFF\x45\x3C\x00\x00\x00\x00\x00\x00\x7C\x00\x9B\x00\xF6\x00\x00\xDD\x00\x00\x00\x00\x00\x00\x00\x00\x00\x59\xA8\xE4\x00\x00\x00\x00\x00\x00\x00\x00\x7B\x00\x0F\x00\x00\x00\x48\x4E\x00\x00\x00\x06\xF3\x00\x00\x00\x00\xD9\x5A\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00' -a3 -d1 -o1 -d1+s -r-5+se -L3 -As -d3 -a5

#12 июн (--)
#./ciadpi --port 1080 --ip 127.0.0.1 -H:"youtube.com googlevideo.com ytimg.com ggpht.com youtu.be youtubei.googleapis.com" -Kt,h -d1 -s1+s -s3+s -s6+s -s9+s -s12+s -s15+s -s20+s -s30+s -a1 -An -H:"soundcloud.com api.soundcloud.com api-v2.soundcloud.com m.soundcloud.com eventgateway.soundcloud.com api-partners.soundcloud.com api-mobile.soundcloud.com wis.sndcdn.com va.sndcdn.com invite.soundcloud.com events.soundcloud.com" -Kth -Qorig -n "www.google.com" -f-1 -t5 -d1 -s1+s -s3+s -s6+s -s9+s -s12+s -s15+s -s20+s -s30+s -Mh,d,r -An -H:"sndcdn.com a-v2.sndcdn.com cf-hls-media.sndcdn.com cf-media.sndcdn.com cf-preview-media.sndcdn.com cf-hls-opus-media.sndcdn.com i1.sndcdn.com i2.sndcdn.com i3.sndcdn.com i4.sndcdn.com assets.soundcloud.com playback.media-streaming.soundcloud.cloud" -Kth -Qorig -n "www.google.com" -f-1 -t5 -s1 -d2 -Mh,d,r -An -H:"discord.com discord.gg discord.media discordapp.com cdn.discordapp.com media.discordapp.net images-ext-1.discordapp.net images-ext-2.discordapp.net images.discordapp.net gateway.discord.gg status.discord.com api.discord.com discord-attachments-uploads-prd.storage.googleapis.com hcaptcha.com recaptcha.net accounts.google.com appleid.apple.com" -Kth -Qorig -n "www.google.com" -f-1 -t5 -o1 -s1+s -s2+s -s5+s -d3+s -s7+s -s10+s -s15+s -An -Ku

#(+++++)
#./ciadpi --port 1080 --ip 127.0.0.1 -H:"youtube.com googlevideo.com ggpht.com ytimg.com googleapis.com googleusercontent.com youtube-ui.l.google.com yt4.ggpht.com" -o1 -a1 -r-5+se -t6 -n rutube.com -An -f-1 -t8 -n www.google.com -d1 -s1+s -d1+s -s3+s -d6+s -s12+s -d14+s -s20+s -d24+s -s30+s -a1

#15 июн (-)
#./ciadpi --port 1080 --ip 127.0.0.1 --tlsrec 1+s --disoob 3+s --mod-http h,d

#(-)
#./ciadpi --port 1080 --ip 127.0.0.1 --tlsrec 1+s --fake 517 --ttl 8 --disorder 1

#16 июн (--)
#./ciadpi --port 1080 --ip 127.0.0.1 -H:"youtube.com googlevideo.com ggpht.com ytimg.com googleapis.com googleusercontent.com youtube-ui.l.google.com yt4.ggpht.com" -s1 -q1 -a1 -Y -At -a1 -S -f-1 -r1+s -a1 -As -d1+s -O1 -s29+s -a1 -H:"cdn.discordapp.com canary.discord.comvdis.gd ptb.discord.com discord-attachments-uploads-prd storage.googleapis.com discord-activities.com discord.co discord.com discord.design discord.dev discord.gg discord.gift discord.gifts discord.media discord.new discord.store discord.tools discordactivities.com discordapp.com discordapp.net media.discordapp.net images-ext-1.discordapp.net images-ext-2.discordapp.net stable.dl2.discordapp.net discordcdn.com discordmerch.com discordpartygames.com discordsays.com discordsez.com discordstatus.com" -f-1 -t8 -n www.google.com -s1+s -a5 -An -H:"soundcloud.com sndcdn.com soundcloud.app.goo.gl" -f-1 -T0.5 -Ars -d0+sm -At -r1+s -An -f-200 -s2 -s5+hm -t6 -Qr -n wb.ru

#23 июн (--)
#./ciadpi --port 1080 --ip 127.0.0.1 -Kth -Qorig -n "google.com" -f-1 -t5 -d1 -s1+s -s3+s -s6+s -s9+s -s12+s -s15+s -s20+s -s30+s -Mh,d,r -An

#(--)
#./ciadpi --port 1080 --ip 127.0.0.1 -H:"x.com twitter.com t.co twimg.com twitter.jp twitter.it twitter.de twitter.fr twitter.es twitter.co.uk twitter.com.br twitter.net twitter.org twitter.map.fastly.net abs.twimg.com pbs.twimg.com video.twimg.com ton.twitter.com api.twitter.com upload.twitter.com mobile.twitter.com help.twitter.com support.twitter.com status.twitter.com blog.twitter.com careers.twitter.com about.twitter.com ads.twitter.com analytics.twitter.com business.twitter.com create.twitter.com engage.twitter.com grow.twitter.com insights.twitter.com jobs.twitter.com learn.twitter.com media.twitter.com momentmaker.twitter.com pro.twitter.com studio.twitter.com survey.twitter.com tweetdeck.twitter.com twittercommunication.com twittermarketing.com twitterpartners.com" -s1 -d1 -r1+s -At -f-1 -r1+s -An

#28 июн
#./ciadpi --port 1080 --ip 127.0.0.1 -r-3+s -o1 -q2+sm -a2

#13 июл
#./ciadpi --port 1080 --ip 127.0.0.1 -H:"googleapis.com" -s1 -r1+s -An -H:"ggpht.com googlevideo.com youtube.com youtu.be ytimg.com" -o1 -r-5+se -An -d1 -d3+s -s6+s -d9+s -s12+s -d15+s -s20+s -r1+s -S -a1 -As -e1 -f2

#17 июл (++)
#./ciadpi --port 1080 --ip 127.0.0.1 -H:"googleapis.com" -s1 -r1+s -An -H:"ggpht.com googlevideo.com youtube.com youtu.be ytimg.com" -o1 -r-5+se -An -d1 -d3+s -s6+s -d9+s -s12+s -d15+s -s20+s -r1+s -S -a1 -As -e1 -f2 -H:"instagram.com instagram-p00-shv-00-xyz.fbcdn.net cdninstagram.com graph.instagram.com" -s1 -r1+s -An

#19 июл (+++)
#./ciadpi --port 1080 --ip 127.0.0.1 -H:"youtu.be youtube.com ytimg.com ggpht.com googleapis.com googleusercontent.com googlevideo.com" -o1 -s3+s -r-5+se -An -f-200 -s2 -s5+hm -m2 -Qr -n ya.ru -a1

#21 июл (--)
#./ciadpi --port 1080 --ip 127.0.0.1 -m4 -a2 -s3+s -s11+s -s25+s

#26 июл (-)
#./ciadpi --port 1080 --ip 127.0.0.1 -H:"youtube.com youtu.be ytimg.com ggpht.com googleapis.com googleusercontent.com signaler-pa.youtube.com" --tlsrec 4+s --tlsrec 8+s --tlsrec 12+s --tlsrec 16+s --tlsrec 20+s --disorder 25+s -H:"googlevideo.com" --tlsrec 14+s --disorder 25+s

# (+++)
#./ciadpi --port 1080 --ip 127.0.0.1 -H:"googleapis.com" -s1 -r1+s -An -H:"youtube.com youtu.be ggpht.com ytimg.com l.google.com play.google.com nhacmp3youtube.com googleusercontent.com googlevideo.com wide-youtube.l.google.com" -o1 -a1 -r-6+se -An -f-200 -s2 -s5+hm -m2 -d7 -t7 -Qr -n vk.com

#./ciadpi --port 1080 --ip 127.0.0.1 --auto=torst,ssl_err --timeout 3 --split 1+s --disorder 3+s --fake -1 --ttl 4 --mod-http hcsmix,dcsmix,rmspace --fake-tls-mod orig

#2 авг (+)
#./ciadpi --port 1080 --ip 127.0.0.1 -H:"googleapis.com" -s1 -r1+s -An -H:"ggpht.com googlevideo.com youtube.com youtu.be ytimg.com" -o1 -r-5+se -An -H:"discord.com discord.gg discord.media discordapp.net dis.gd" -s1+s -d3+s -f-1 -t4 -Qorig -a2 -An -d1 -d3+s -s6+s -d9+s -s12+s -d15+s -s20+s -r1+s -a2 -As -e1 -f2

#6 авг
#./ciadpi --port 1080 --ip 127.0.0.1 -Ku -a3 -An -At -f-1 -Qr -n pyatdesyatodin.co.uk -n kmp.jetbrains.com -n jetbrains.com -t7 -At -r-3+s -As -d3 -T1

#10 авг (+++)
#./ciadpi --port 1080 --ip 127.0.0.1 -a4 -m4 -r-3+s -s3+s -s11+s -s25+s  -At  -f0+nme -n max.ru -n vk.ru -n ya.ru -Qr -At -r4+s -r8+s -r12+s -r16+s -r20+s -d25+s

#16 авг (++-)
#./ciadpi --port 1080 --ip 127.0.0.1 -H:"signaler-pa.youtube.com" -o 1 -r 5+s -r 16+s -An -H:"youtube.com" -o 1 -r -8+se -r -4+se -An -H:"youtu.be" -o 1 -r -6+se -r -3+se -An -H:"googlevideo.com" -o 1 -r -11+se -r -5+se -An -H:"ytimg.com ggpht.com youtubei.googleapis.com yt3.googleusercontent.com" -o 1 -r 1+s -An

#(++-)
#./ciadpi --port 1080 --ip 127.0.0.1 -l ':\xc0\x00\x00\x00\x01\x08\x11\x22\x33\x44\x55\x66\x77\x88\x00\x40\x50\x01\x00\x00\x4c\x03\x03\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x20\x00\x08\x00\x06\x00\x00\x05\x79\x61\x2e\x72\x75\x00*16315' -a3 -d1 -o1 -d1+s -r-5+se -As -t6 -q1 -d3 -r1 -f3 -n google.com -o-1 -Y -f1 -n ya.ru -o-1

#23 авг (++)
#./ciadpi --port 1080 --ip 127.0.0.1 -o1+s -d1+s -s3+s -s6+s -s9+s -s12+s -s15+s -s20+s -a1 -At -T0.5 -r-5+se -f-1 -t5 -Qr -n google.com -a1 -As -d0+sm -r1+s -a1

#(-)
#./ciadpi --port 1080 --ip 127.0.0.1 -d1+s -s3+s -s6+s -s9+s -s12+s -s15+s -s20+s -a1 -At -l ':\xc0\x00\x00\x00\x01\x08\x11\x22\x33\x44\x55\x66\x77\x88\x00\x40\x50\x01\x00\x00\x4c\x03\x03\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x20\x00\x08\x00\x06\x00\x00\x0agoogle.com\x00' -f-1 -t5 -a1 -As -f-1 -t4 -Qr -n google.com -a1

#26 авг (+-+)
#./ciadpi --port 1080 --ip 127.0.0.1 -f 1 -l ':\x16\x03\x01' -t 8 -r 1+s -r 3+sm -q 3+s

#31 авг
#./ciadpi --port 1080 --ip 127.0.0.1 -m1 -s5+hs -r-5+se -r16+s -o1

#5 авг
./ciadpi --port 1080 --ip 127.0.0.1 -o1 -r-5+se -s1+s -s3+sm

