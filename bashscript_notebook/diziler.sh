#!/bin/bash

sistemler=('Linux' 'Windows' 'Unix')

echo ${sistemler[@]} # dizinin tüm elemanları
echo ${sistemler[0]}  # 1. eleman
echo ${sistemler[1]} 
echo ${sistemler[2]}
echo ${!sistemler[@]}  # indexleri doner
echo ${#sistemler[@]}  # eleman sayısını veriri.

sistemler[3]='Mac'  # diziye eleman eklemek icin
echo ${sistemler[@]}
unset sistemler[1]  # verilen indexdeki elemanı siler.
echo ${sistemler[@]}
echo ${!sistemler[@]}