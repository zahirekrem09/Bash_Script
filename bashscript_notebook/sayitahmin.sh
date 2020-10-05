#!/bin/bash

random=$(( ($RANDOM%100)+1 ))
echo "1 ile 100 arasında bir sayı tuttum"
echo "Hadi tahmin edelim"
echo -e "Sece sayi ne:\c"
read tahmin

let tahmin_sayisi=1

while (( tahmin!=random ))
do      
        if (( tahmin > random ))
        then    
                echo "daha kucuk sayı gır."
        elif (( tahmin < random ))
        then
                 echo "daha buyuk  sayı gır."
        fi
        echo -e "Sece sayi ne:\c"
        read tahmin
        ((tahmin_sayisi++))
done

echo "$tahmin_sayisi  defada bildiniz."

if [ $tahmin_sayisi -lt 6 ]; then
        echo "Tebrikler..."
fi


