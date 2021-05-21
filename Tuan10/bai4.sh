#!/bin/bash
dialog --title "Input 1" --backtitle "Nhap  ten file" --inputbox "Enter filename" 20 60 2>/tmp/input1.txt
file=`cat /tmp/input1.txt`

if [ -f "$file" ]
then
    rs=1
else
    rs=0
fi

if [ $rs -eq 1 ]
then
    dialog --title "Alert : Delete File" --backtitle "Linux Shell ScriptTutorial" --yesno "Đây là file đã tổn tại, bạn có muốn xoá file" 7 60
    sel=$? # Lay ra exit status
    case $sel in
    0) echo "Có " 
        echo `rm "$file"`;;
    1) echo "Không";;
    255) echo "Canceled by user by pressing [ESC] key";;
    esac
else
    dialog --title "Alert : Delete File" --backtitle "Linux Shell ScriptTutorial" --yesno "File này chưa tồn tại" 7 60
    sel=$? # Lay ra exit status
    case $sel in
    0)echo "tạo file" 
    echo `touch "$file"`;;
    1) echo "Không" ;;
    255) echo "Canceled by user by pressing [ESC] key";;
    esac
fi