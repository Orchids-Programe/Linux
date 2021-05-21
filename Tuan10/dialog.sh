#!/bin/bash
dialog --title "Input" --backtitle "Nhap so : " --inputbox "Enter a" 20 60 2> input1.txt
a=`cat input1.txt`
sochinhphuong()
{
    d=$( echo "sqrt($1)" | bc )
    if [ $((d*d)) -eq $1 ]
    then
        echo "La so chinh phuong"
    else
        echo "Khong la so chinh phuong"
    fi
}
dialog --title "Infobox" --backtitle "Hien thi thong bao" --infobox "Ket qua $(sochinhphuong $a)" 20 60