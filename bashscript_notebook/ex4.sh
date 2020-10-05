#!/bin/bash

adresler=$@

for adres in $adresler
do

if [ -e $adres ]
then
	if [ -f $adres ]
	then
		echo "dosyadır"
		#exit 1
	fi

	if [ -d $adres ]
	then
		echo "dizin"
		#exit 2
	fi
else
	echo "adres yok"
	#exit 16 
fi
done
