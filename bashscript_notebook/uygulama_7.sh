#!/bin/bash
echo "pid $$ dir"  ## proses numarasını verirr.
sayi=0
while ((sayi<10)) 
do
    sleep 10
    ((sayi++))
    echo "$sayi"    
done
