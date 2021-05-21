#!/bin/bash
read n
for((i=0;i<n;i++))
do
    read a
    NAME[i]=$a
done

sum(){
    tong=0
    echo ${NAME[@]:n}
    for((i=0;i<${#NAME[@]};i++))
    do
        let tong+=NAME[i]
    done
    echo "Tong cac phan tu cua mang la : $tong"
}

lonnhat(){
    max=${NAME[0]}
    for i in ${NAME[*]}
    do
        if [ $max -lt $i ]
        then
            max=$i
        fi
    done
    echo "Gia tri lon nhat cua mang la $max"
}

nhonhat(){
    min=${NAME[0]}
    for i in ${NAME[*]}
    do
        if [ $min -gt $i ]
        then
            min=$i
        fi
    done
    echo "Gia tri nho nhat cua mang la $min"
}

songuyento(){
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

innguyento(){
    index=0
    for((i=0;i<${#NAME[@]};i++ ))
    do
        if [ $(songuyento ${NAME[i]}) -eq 1 ]
        then
            ar[index]=${NAME[i]}
            let index+=1
        fi
    done
    echo "Các số nguyên tố trong mảng là : ${ar[@]}"
}

sochinhphuong(){
    d=$( echo "sqrt($1)" | bc )
    if [ $((d*d)) -eq $1 ]
    then
        echo 1
    else
        echo 0
    fi
    echo
}

inchinhphuong(){
    for((i=0;i<${#NAME[@]};i++ ))
    do
        if [ $(sochinhphuong ${NAME[i]}) -eq 1 ]
        then
            ar[i]=${NAME[i]}
        fi
    done
    echo "Các số chính phương trong mảng la : ${ar[@]}"
}
# sum
# lonnhat
# nhonhat
case $1
in
    1)
    echo $(sum)
    exit;;
    2)
    echo $(lonnhat)
    echo $(nhonhat)
    exit;;
    3)
    echo $(innguyento)
    exit;;
    4)
    echo $(inchinhphuong)
    exit;;
esac
