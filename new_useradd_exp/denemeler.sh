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
    fi

    #echo $line | awk -F, '{print $3}' | sed 's/-/,/g'
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
            #echo $grp
        done

        #echo $line_2
    done < groups

    user_shell=`echo $line | awk -F, '{print $4}'`
    #echo $loginname $home_dic $group $user_shell
    sudo useradd -m -d /home/$home_dic -s /bin/$user_shell -G $group -p $password $loginname
    #echo $count_2
    #echo $loginname
    #echo $create_group

done < usernames_info