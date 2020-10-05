#!/bin/bash
read -p "Please enter the number of users to be deleded_ "  user_num
cat /etc/passwd | tail -$user_num >> user_del
user_count=0
while read line
do
    user=$( echo $line | cut -d: -f1)
    sudo userdel -rf $user
    let $user_count++
done < user_del
sudo rm user_del
read -p "Please enter the number of groups to be deleded_ "  group_num
cat /etc/passwd | tail -$group_num >> group_del
group_count=0
while read line
do
    group=$( echo $line | cut -d: -f1)
    sudo groupdel $group
    let $group_count++
done < group_del
sudo rm group_del

echo "You have deleted ${user_count} users and ${group_count} groups"