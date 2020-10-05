#!/bin/bash

sayi=10
if [ $sayi -eq 10 ]
then
echo "basarılı"
fi
if (( $sayi > 9 )) 
then
echo "basarılı"
elif (( $sayi == 9 ))
then 
echo "sayı guzul"
else
echo "sayı nanay"
fi
ad=Ekrem
if [ $ad == "Ekrem" ]
then
echo "giris nasarılı"
else
echo "basarısız"
fi

yas=28
if [ $yas -gt 18 ] && [ $yas -lt 30 ]; then
     echo "gecerli yas"
else
     echo " geersiz yas"
fi
