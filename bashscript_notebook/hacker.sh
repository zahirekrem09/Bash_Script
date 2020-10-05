#!/bin/bash
read  number
toplam=0
i=1
while ((i<=$number)); do
    read num
    ((toplam+=num))
    ((i++))
done

echo "scale=3;$toplam/$number" | bc -l
python3 -c "print(round($toplam/$number,3))"

echo "($toplam+$number)/$number" | bc  # yuvarlama
