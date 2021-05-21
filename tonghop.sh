#!/bin/bash
# read n
# for((i=0;i<n;i++))
# do
#     read a
#     array[i]=$a
# done
array=(1 4 3 2 5 7 6 8)
sochinhphuong()
{
    d=$( echo "sqrt($1)" | bc)
    if [ $((d*d)) -eq $1 ]
    then
        echo 1
    else 
        echo 0
    fi
    echo
}

inchinhphuong(){
    for((i=0; i < ${#array[@]}; i++))
    do
        if [ $(sochinhphuong ${array[i]}) -eq 1 ]
        then
            arr[i]=${array[i]}
        fi
    done
    echo "Cac so chinh phuong trong day la : ${arr[@]}"
}
# sochinhphuong 3
# inchinhphuong

songuyento(){
    n=$1
    flag=1
    d=$( echo "sqrt($n)" | bc )
    if [ $1 -lt 2 ]
    then 
        flag=0
    fi
    for(( i = 2; i <= $d; i++))
    do
        if [ $(($n%i)) -eq 0 ]
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

insonguyento()
{   
    index=0
    for((i=0; i < ${#array[@]}; i++))
    do
        if [ $(songuyento ${array[i]}) -eq 1 ]
        then
            arr[index]=${array[i]}
            let index+=1
        fi
    done
    echo "Cac so nguyen to trong day la : ${arr[@]}" 
}
# echo $(songuyento 4)
# insonguyento

songhichdao()
{
    a=$1
    while [ $a -gt 0 ]
    do
        n=$((a%10))
        printf $n
        a=$((a/10))
    done
    echo
}
# echo $(songhichdao 123)

sapxepmang(){
    len=${#array[@]}
    for((i = 0; i < $(($len-1)); i++))
    do
        for((j=i+1; j < $len; j++))
        do
            if [ ${array[j]} -lt ${array[i]} ]
            then
                temp=${array[i]}
                array[i]=${array[j]}
                array[j]=$temp
            fi
        done
    done
    echo ${array[@]}
}
echo $(sapxepmang)

UCLN(){
    a=$1
    b=$2
    while [ $a -ne $b ]
    do
        if [ $a -gt $b ]
        then
            a=$(($a-$b))
        else
            b=$(($b-$a))
        fi
    done
    echo $a
}
echo $(UCLN 2 8)

BCNN()
{
    a=$1
    b=$2
    ucln=$(UCLN $a $b)
    if [ $a -gt $b ]
    then
        echo $(($a*ucln))
    else
        echo $(($b*ucln))
    fi
}
echo $(BCNN 6 36)

# while [ true ]
# do 
#     echo "Nhap lua chon"
#     read a
#     case $a
#     in
#         0)
#         break
#         exit;;
#         1)
#         echo $(insonguyento);;
#         2)
#         echo $(inchinhphuong);;
#         3)
#         echo $(songhichdao);;
#     esac
# done