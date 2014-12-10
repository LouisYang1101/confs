#!/bin/bash
#SCRIPT:  path.sh
#PURPOSE: Auto apply and back up config files for mac

config_name="path"
count=0
current_path=""

DIR=$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )

echo $DIR

while read LINE
do
    if [[ $LINE == \[* ]]
    then
        #strlen=`expr ${#LINE} - 1`
        #current_path=`echo ${LINE} | cut -c 2-${strlen}`
        current_path="$HOME/"
        continue
    fi

    if [[ $current_path != "" ]]
    then
        complete_path="$current_path$LINE"
        echo $complete_path
        cp -r $complete_path "$complete_path.bak"
        ln -sfn "$DIR/$LINE" $complete_path
    fi

    let count++
    echo "$LINE"

done < $config_name

