#!/bin/bash
echo "karakter  gir:\c"
read char
case $char in
     [a-z] )
        echo "Kullanıcı $char harfini giridi "
    ;;
     [0-9])
        echo "Kullanıcı $char rakamını giridi "
    ;;
     ?)
        echo "Kullanıcı $char ozel karakter giridi "
    ;;
     *)
        echo "Bilinmeyen karakter "
esac
