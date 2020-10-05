#!/bin/bash

yedekklasor="$HOME/yedek-$(date +%Y%m%d-%H%M%S)"
if [ ! -d yedekklasor ]; then
     /bin/mkdir $yedekklasor
fi
for dosya in $(ls)
do
    if [ -f $dosya ]; then
        echo "$dosya  kopyalanıyor"
        /bin/cp -p $dosya $yedekklasor
    fi
done 