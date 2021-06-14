#!/bin/bash
while read -ra line;
do
    for word in "${line[@]}";
    do
        
	if (( ${#word} > 4 ));then 
	rep=`echo $word | cut -c1-4`
	place=`echo $word | cut -c 5-`
	
	new_string=""
	
        for (( i=0 ; i<${#place}; i++ )); do
            new_string+="#"
        done
	
	rep+=$new_string
        word=$rep

        fi
        
	echo -n "$word "
         	
    done;
    echo
done < $1 > $2
