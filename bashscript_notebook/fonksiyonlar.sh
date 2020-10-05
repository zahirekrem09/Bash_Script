#!/bin/bash
echo -e "Bir sayi giriniz:\c"
read sayi
function Kare(){
    echo "Karesi: $((sayi*sayi))"
}
Kare
function Cikti(){
    local isim=$1
    echo "İsminiz: $isim"
}

isim = "Sezgin"
echo "İsmim:" + $isim
Cikti Ekrem