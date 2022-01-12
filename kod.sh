#!/bin/sh
#File Select Yerine List kullanilmasinin sebebi
#kullanicinin sadece var/log icindeki dosyalari gormesini
#saglamak icindir.
degisken=$(zenity --width 500 --height 500  --list \
  --title="Gormek Istediginiz Dosyayi Seciniz" \
  --column="Dosya Adi" \
$(ls  /var/log/*log* | grep -v gz ))
#Icinde log gecemeyen her dosyayi aramadan cikardim. Bunun sebebi ile dmesg
#tarzi dosyalarda yok, Proje kapsaminda loglar istendigi icin icinde loglari
#bulundursada gz uzantilari dosyalari da kapsama almiyorum.
while [[ "$degisken2" != "Cikis" ]]
do
  degisken2=$(
    grep "$degisken2" "$degisken"|zenity --width 800 --height 800 --text-info\
   --title="$degisken Log"|( zenity --entry --title="Arama" --text="Buraya Girin:" )
    )
done


