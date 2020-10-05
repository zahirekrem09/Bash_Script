#!/bin/bash
user_to_delete=()
number=()
count=0
read -p "Please enter the number of users to be deleded_ "  user_num
number[0]=$user_num
echo "***"
echo -n "Users to be deleted : "

for line in `cat /etc/passwd | tail -$user_num`
do
    user=$( echo $line | cut -d: -f1)
    user_to_delete[$count]=$user  # arry in  element add
    let count++
    echo -n "$user "
done

printf "\n"

echo "Press CTRL+D in 5 seconds to abort"
echo "***"
sleep 5

group_to_delete=()
count=0
read -p "Please enter the number of groups to be deleded_ "  group_num
number[${#number[*]}]=$group_num
echo "***"
echo -n "Groups to be deleted : "

for line in `cat /etc/group | tail -$group_num`
do
    group=$( echo $line | cut -d: -f1)
    group_to_delete[$count]=$group
    let count++
    echo -n "$group "
done

printf "\n"

echo "Press CTRL+D in 5 seconds to abort"
echo "***"
sleep 5

for user in ${user_to_delete[@]};
do
    #[ -e /archieves ] || mkdir /archieves
    #tar cf /archieves/${user}.tar.gz /home/$user
    sudo userdel -r $user
done

for group in ${group_to_delete[@]};
do
    sudo groupdel $group
    #tar cf /archieves/${group}.tar.gz /$group
    sudo rm -rf /$group
done

echo "You have deleted ${number[0]} users and ${number[1]} groups"