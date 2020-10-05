#!/bin/bash

select iller in Ankara izmir istanbul
do
    case $iller in
     Ankara )
        echo "Ankara Secildı.";;
     izmir )
        echo "İzmir secildi";;
     istanbul )
        echo "istanbul secildi";;
     * )
        echo "dogru secıp yap";;
    esac
done
