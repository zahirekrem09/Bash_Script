#!/bin/bash

function buyuk {
    if [ $1 -gt $2 ]
    then
        echo $1
    else
        echo $2
    fi
}
if [ $# -lt 2 ]
then
     echo "iki sayı gir"
     exit 1
fi
x=$1
y=$2
if ! [[ "$x" =~ ^[[:blank:]]*[0-9]*[[:blank:]]*$ ]]
then
    echo "Hatalı sayı $x"
    exit 1
fi
if ! [[ "$y" =~ ^[[:blank:]]*[0-9]*[[:blank:]]*$ ]]
then
    echo "Hatalı sayı $y"
    exit 1
fi
max=$(buyuk $x $y)
echo "buyuk sayı $max"