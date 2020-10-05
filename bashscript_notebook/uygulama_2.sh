#!/bin/bash
x=$1
y=$2

if [ $# -lt 2 ]
then
    echo "lutfen iki tane sayi GİRİNİZ."
    echo "Kullanım sekli = $0 sayi1 sayi2"
    exit
fi

if ! [[ "$x" =~ ^[[:blank:]]*[0-9]*[[:blank:]]*$ ]]
then
    echo "Hatalı giris= $x"
    exit 1
fi
if ! [[ "$y" =~ ^[[:blank:]]*[0-9]*[[:blank:]]*$ ]]
then
    echo "Hatalı giris= $y"
    exit 1
fi


topla=$((x+y))
cikar=$((x-y))
carp=$((x*y))
bol=$((x/y))

echo "$x + $y = $topla"
echo "$x - $y = $cikar"
echo "$x * $y = $carp"
echo "$x / $y = $bol"