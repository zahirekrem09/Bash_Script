#!/bin/bash

if [ -f /etc/shadow ]
then
	echo "Shadow parolaları etkin"
	if [ -w /etc/shadow ]
	then
		echo "yazma yetkin var"
	else
		echo "yazma yetkin yok"
	fi
else
	echo "dosya yok"
fi
