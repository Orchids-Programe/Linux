#!/bin/bash
read a

case $1
in 
    1)
    sum=0
    while [ $a -gt 0 ]
    do 
        n=$((a%10))
        if [ $((n%2)) -eq 0 ]
        then
            let sum+=n
        fi
        a=$((a/10))
    done
    echo $sum
    exit;;
    2)
    max=0
    while [ $a -gt 0 ]
    do
        n=$((a%10))
        if [ $max -lt $n ]
        then
            max=$n
        fi
        a=$((a/10))
    done
    echo $max
    exit;;
    3)
    while [ $a -gt 0 ]
    do
        n=$((a%10))
        printf $n
        a=$((a/10))
    done
    echo
    exit;;
    4)
    d=$( echo "sqrt($a)" | bc )
    if [ $((d*d)) -eq $a ]
    then
        printf Yes
    else
        printf No
    fi
    echo
    exit;;
    5)
    sum=0
    for(( i=1; i < a; i++ ))
    do
        if [ $((a%i)) -eq 0 ]
        then
            let sum+=i
        fi
    done
    if [ $sum -eq $a ]
    then
        printf "$a la so hoan hao"
    else   
        printf "$a khong la so hoan hao"
    fi
    echo
    exit;;

esac