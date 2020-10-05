#!/bin/bash

if [ $# -lt 1 ]
then
     echo "Lütfen Dosya ismi giriniz."
     echo " Kullanım sekli: $0 dosyaismi"
fi

dosya=$1

if [ -d "$dosya" ]
then
     echo  "$dosya bir klasordür."
elif [ -f "$dosya"  ]
then
     echo  "$dosya  normal bir dosyadır.."
elif [ -e "$dosya"  ]
then
     echo  "$dosya  ozel bir dosyadır.."
else
     if (($#==1))
     then
     echo  "$dosya  bulunmamaktadır..."
    fi
fi 


