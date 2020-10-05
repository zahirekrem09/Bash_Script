#!/bin/bash
echo "Dosya Adı:\c"
read dosyaismi
if [ -s $dosyaismi ]
then
    echo "$dosyaismi  dosya dolu"
else
    echo "$dosyaismi  dosya bos"
fi
# -e -f -s -d -r -w -x
