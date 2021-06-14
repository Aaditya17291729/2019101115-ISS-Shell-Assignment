#!/bin/bash

echo "1. Words - start with ‘s’ and is not follow by ‘a’"
while read -ra line
do
    for word in "${line[@]}";
    do
	if [[ ${word:0:1} == "s" && ${word:1:1} != "a" ]]
       	then
        echo -n "$word, "
        fi
    done
done < $1
echo
echo "2. Word starts with ‘w’ and is followed by ‘h’"
while read -ra line
do
    for word in "${line[@]}";
    do
        if [[ ${word:0:1} == "w" && ${word:1:1} == "h" ]]
        then
        echo -n "$word, "
        fi
    done
done < $1
echo
echo "3. Word starts with ‘t’ and is followed by ‘h’"
while read -ra line
do
    for word in "${line[@]}";
    do
        if [[ ${word:0:1} == "t" && ${word:1:1} == "h" ]]
        then
        echo -n "$word, "
        fi
    done
done < $1
echo
echo "4. Word starts with ‘a’ and is not followed by ‘n’"
while read -ra line
do
    for word in "${line[@]}";
    do
        if [[ ${word:0:1} == "a" && ${word:1:1} != "n" ]]
        then
        echo -n "$word, "
        fi
    done
done < $1
echo

