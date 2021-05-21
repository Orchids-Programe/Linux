#!/bin/bash
a=$1
b=$2

tong=`expr $a + $b`
echo "Tong hai so $tong"

hieu=`expr $a - $b`
echo "Hieu hai so $hieu"

tich=`expr $a \* $b`
echo "Tich $tich"

thuong=$(echo "$a / $b" | bc -l)
echo "Thuong $thuong"



echo "Nhap vao ten file [$3]"
a=$3
if [ -f "$a" ]
l=`cat $a`
then
    echo "Noi dung file : "
    echo $l
else
    echo "Khong ton tai"
fi