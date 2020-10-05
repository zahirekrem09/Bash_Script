#!/bin/bash
read -a sayi1
read -a sayi2
echo $(( $sayi1+$sayi2 ))

echo $( expr $sayi1 + $sayi2 )
echo $( expr $sayi1 - $sayi2 )
echo $( expr $sayi1 \* $sayi2 )
echo $( expr $sayi1 / $sayi2 )

echo "15.5+10" | bc   # float aritmetik islem icin
echo "15.5-10" | bc 
echo "15.5*10" | bc 
echo "15.5/10" | bc
echo "15.5%10" | bc  

echo "scale=2;20.5/5" | bc  # virgulden sonraki kısmı almak icin

echo "scale=4;sqrt(5)" | bc -l 
echo "scale=4;$sayi2^3" | bc -l 