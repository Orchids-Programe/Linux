#!/bin/bash
dialog --title "Input 1" --backtitle "Nhap so nguyen a" --inputbox "Enter a" 20 60 2>/tmp/input1.txt
a=`cat /tmp/input1.txt`
sodoixung()
{
    n=$1
    while [ $n -gt 0 ]
    do
        d=$(($n%10))
        rs=$((rs*10 + d))
        n=$((n/10))
    done
    if [ $rs -eq $1 ]
    then
        echo "La so doi xung"
    else
        echo "Khong la so doi xung"
    fi
}
# sodoixung 112

kq=$(sodoixung $a)
dialog --title "Ketqua" --backtitle "Ketqua" --msgbox "Ketqua la $kq " 20 50