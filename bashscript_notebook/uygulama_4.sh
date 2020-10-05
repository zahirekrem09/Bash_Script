#!/bin/bash

read -p "isminizi giriniz:" isim digerisim
if [ -z $isim ]; then  # degiskenin uzunlugu 0 dan buyukse true doner.
    echo "isim giriniz"
    exit 1
else
     loginisim=$(echo $isim | tr [:upper:] [:lower:])
     tamisim="$isim"
     if [ ! -z $digerisim  ]; then
          tamisim="$isim $digerisim"
     fi
fi

read -p "soyisminizi giriniz:" soyisim
if [ -z $soyisim ]; then  # degiskenin uzunlugu 0 dan buyukse true doner.
    echo "soyisim giriniz"
    exit 1
else
     loginsoyisim=$(echo $soyisim | tr [:upper:] [:lower:])
     tamsoyisim="$soyisim"  
fi

login=${loginisim}.${loginsoyisim}

echo -e "Shell olarak ksh mi yoksa bash mi istersiniz:\c"
read shell

if [ -z $shell ]; then  # degiskenin uzunlugu 0 dan buyukse true doner.
    echo "shell  giriniz"
    exit 1
else
    case "$shell" in
         ksh)
            sec_shell=/bin/ksh
        ;;
         bash)
            sec_shell=/bin/bash
        ;;
        *)
            echo "Sadece ksh veya bash girmelisin"
            exit 1
        ;;
    esac
fi

read -p "Home directiory olussun mu (evet icin e hayır icin h )" evethayir
if [ -z $evethayir ]; then  # degiskenin uzunlugu 0 dan buyukse true doner.
    echo "tercih yapınız"
    exit 1
else
    case "$evethayir" in
        e)
            dosyaol="-m"
        ;;
        h)
            dosyaol=
        ;;
        *)
            echo "Sadece e veya h girmelisin"
            exit 1
        ;;
    esac
fi
echo "Girmen gereken komut:"
echo "---------------------"
echo "sudo useradd $dosyaol -d /home/$login -s $sec_shell -c \"$tamisim $tamsoyisim\" $login "