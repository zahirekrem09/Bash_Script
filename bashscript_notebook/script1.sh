#! /bin/bash
#bu script dosya ismini eniden adlandırı.
echo "yeni isim ve eski isimi girmelisin"
read eski_isim
read yeni_isim
mv $eski_isim $yeni_isim
ls -l
