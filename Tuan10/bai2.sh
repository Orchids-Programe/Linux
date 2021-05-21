#!/bin/bash
dialog --title "Input 1" --backtitle "Nhap so nguyen a" --inputbox "Enter a" 20 60 2>/tmp/input1.txt
a=`cat /tmp/input1.txt`
chusolonnhat()
{
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
}
kq=$(chusolonnhat $a)
dialog --title "Ket qua la" --backtitle "Ket qua" --infobox "Ket qua la $kq" 20 60 ;