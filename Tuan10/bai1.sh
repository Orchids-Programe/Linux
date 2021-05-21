#!/bin/bash
dialog --title "Input 1" --backtitle "Nhap so a" --inputbox "Enter a" 20 60 2>/tmp/input1.txt
dialog --title "Input 2" --backtitle "Nhap so b" --inputbox "Enter b" 20 60 2>/tmp/input2.txt  #đuôi $$ sẽ xóa luôn
a=`cat /tmp/input1.txt`
b=`cat /tmp/input2.txt`
c=$((a+b))
echo "ket qua c la $c"

dialog --title "Ket qua la" --backtitle "Ket qua" --infobox "Ket qua la $c" 20 60 ;