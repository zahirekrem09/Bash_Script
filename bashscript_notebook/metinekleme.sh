#!/bin/bash
echo "Dosya Adı:\c"
read dosyaismi

if [ -f $dosyaismi ]
then 
    if [ -w $dosyaismi ]
    then
        echo " Dosya yazıla bilir. CTRL + d ile cıkabilrsin"
        cat >> $dosyaismi
    else 
        echo " Dosya yazılabilir degil"
    fi
else
    echo "Dosya mevcut degil."
fi
