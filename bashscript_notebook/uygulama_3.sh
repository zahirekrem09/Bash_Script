#!/bin/bash
echo -e "Faktoriyeli alınıcak sayı:\c"
read sayi
if [[ "$sayi" =~ ^[[:blank:]]*[0-9]*[[:blank:]]*$ ]]  # rakam kullanılıp kullanılmadıgını kontrol ediyoruz.
then
    ((i=1))
    ((faktoriyel=1))
    while [ $i -le $sayi ]; do
        ((faktoriyel*=i))
        ((i++))
    done
else
    echo "Hatalı giris= $sayi"
    exit 1
fi

echo "$sayi faktoriyel = $faktoriyel"
