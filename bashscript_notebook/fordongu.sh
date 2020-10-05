#!/bin/bash

for i in 1 2 3 4 5
do
    echo $i
done

for i in ls pwd
do
    echo "-----------$i----------------"
    $i
    echo
done

for i in {1..10..2}
do
    echo $i
done

for (( i=0 ; i<=10 ; i++ ))
do
	if [ $i -gt 5 ]
    then
        break
    fi
    echo $i
	sleep 1
done
