#!/bin/bash
i=1
while [ $i -le 10 ]
do
    echo $i
    i=$((i+1))  # ((i++)) veya ((++i))
    sleep 2
done
