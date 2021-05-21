#!/bin/bash
nguyento()
{
    n=$1
    flag=1
    if [ $1 -lt 2 ]
    then
        flag=0
    fi
    temp=$( echo "sqrt($n)" | bc )
    for((i=2; i<=$temp; i++))
    do
        if [ $((n%i)) -eq 0 ]
        then
            flag=0
        fi
    done

    if [ $flag -eq 1 ]
    then
        echo 1
    else
        echo 0
    fi
    
}

hoanhao()
{
    a=$1
    sum=0
    for(( i=1; i < $a; i++ ))
    do
        if [ $((a%i)) -eq 0 ]
        then
            let sum+=i
        fi
    done
    if [ $sum -eq $a ]
    then
        echo 1
    else   
        echo 0
    fi
}
#nguyento 1
#hoanhao 6
case $1
in
    1)
    for i in $*
    do
        if [ $(nguyento $i) -eq 1 ]
        then
            printf "$i "
        fi
    done
    echo
    exit;;
    2)
    for i in $*
    do
        if [ $(hoanhao $i) -eq 1 ]
        then
            printf "$i "
        fi
    done
    echo
    exit;;

esac