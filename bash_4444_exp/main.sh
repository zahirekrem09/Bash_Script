#!/bin/bash

function get_group_attributes_by_key {
filepath=$1
attribute=$2
grep "$attribute:" $filepath | awk -F: '{print $2}' | sed 's/NONE/ /' |\
sed 's/,/ - /'  >> $attribute
}

function find_group_attributes {
filepath=group_desc/$1
get_group_attributes_by_key $filepath desc
get_group_attributes_by_key $filepath tasks
get_group_attributes_by_key $filepath features
}

grep '\[444\]' logfile.txt | awk  '{print $1 " " $2 " " $3}' > date_times
grep '\[444\]' logfile.txt | awk '{print $5}' | awk -F[ '{print $1}' > usernames
grep '\[444\]' logfile.txt | awk -F: '{print $4}' > messages


> user_groups_cvs  
> group_id
> desc
> tasks
> features


while read line
do
    grep $line user_groups.txt | sed 's/:/,/' >> user_groups_cvs  
    group=`grep $line user_groups.txt | awk -F: '{print $2}'`
    group_filename=`ls group_desc/ | grep $group`
    echo $group_filename | awk -F_ '{print $3}' >> group_id
    find_group_attributes $group_filename
done < usernames

echo "date and time,user,group,group id,message,group tasks,group features,group description" > final_cvs
paste -d, date_times user_groups_cvs group_id messages tasks features desc >> final_cvs

