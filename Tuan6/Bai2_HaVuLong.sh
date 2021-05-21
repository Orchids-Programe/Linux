#!/bin/bash
read a
for(( i = 0; i <= a; i++))
do 
    printf "$a * $i = $(($a*$i))" 
    echo
done
