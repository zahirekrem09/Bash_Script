#!/bin/bash
sudo groupadd -g 100 admin
sudo groupadd -g 101 ceo
sudo groupadd -g 102 seo
sudo groupadd -g 103 it
while read line
do  
    #echo $line
    name=`echo $line | awk -F, '{print $1}'`
    home_dic=`echo $line | awk -F, '{print $1}' | awk '{print $1}' | tr [:upper:] [:lower:]`
    loginname=$(echo $name | tr [:upper:] [:lower:] | sed 's/ //')
    group=`echo $line | awk -F, '{print $3}' | sed 's/-/,/'`
    user_shell=`echo $line | awk -F, '{print $4}'`
    #echo $loginname $home_dic $group $user_shell
    sudo useradd -m -d /home/$home_dic -s /bin/$user_shell -G $group $loginname
    
done < usernames_info
