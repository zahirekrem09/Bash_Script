#!/bin/bash
> groups

while read line
do  
    #echo $line
    name=`echo $line | awk -F, '{print $1}'`
    password=`echo $line | awk -F, '{print $2}'`
    home_dic=`echo $line | awk -F, '{print $1}' | awk '{print $1}' | tr [:upper:] [:lower:]`
    loginname=$(echo $name | tr [:upper:] [:lower:] | sed 's/ //')
    count=`sudo grep -c $loginname /etc/passwd`
    if [ $count -ge 1 ]
    then 
        loginname=${loginname}_${count}
        home_dic=${home_dic}_${count}
    fi

    group=`echo $line | awk -F, '{print $3}' | sed 's/-/,/g'`
    count_2=`sudo grep -c $group groups`
    if [ $count_2 -lt 1 ]
    then 
        echo $group >> groups
    fi

    while read line_2
    do
        create_group=`echo $line_2 | sed 's/,/ /g'`
        for grp in $create_group
        do
            count_3=`sudo grep -c $grp /etc/group`
            if [ $count_3 -lt 1 ]
            then
                sudo groupadd $grp
            fi

        done

    done < groups

    user_shell=`echo $line | awk -F, '{print $4}'`
    sudo useradd -m -d /home/$home_dic -s /bin/$user_shell -G $group -p $password $loginname
    
done < usernames_info

sudo rm groups
