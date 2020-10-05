#!/bin/bash
function make_sure(){
read -p "$1" response
echo -e "You entered : $response \nDo you want to continue? [y/n]"
read is_yes
while [[ $is_yes != y ]];
do
    read -p "$1"  response
    echo -e "You entered : $response \nDo you want to continue? [y/n]"
    read is_yes
done
}

make_sure "Please enter user names _ "
user_count=0
for user in $response
do  
    useradd $user
    let user_count++
done
make_sure "Please enter group names _ "
group_count=0
for group in $response
do
    groupadd $group
    let group_count++
    mkdir /$group

    make_sure "Please enter members of gorup $group _ "
    for member in $response
    do
        gpasswd -a $member $group
        ln -s /$group /home/$member
    done
    make_sure "Please enter owner of folder  $group _ "
    chown -R $response /$group;chgrp -R $group /$group
    chmod -R 2770 /$group
done

echo -n "You have created $user_count  users: "
count=0
for line in `sudo cat /etc/passwd | tail -$user_count`
do
    user=$( echo $line | cut -d: -f1 )
    let count++
    echo -n " $count-$user"
done
printf "\n"

echo -n "You have created $group_count  group: "
count=0
for line in `sudo cat /etc/group | tail -$group_count`
do
    grp=$( echo $line | cut -d: -f1 )
    let count++
    echo -n " $count-$grp"
done
printf "\n"