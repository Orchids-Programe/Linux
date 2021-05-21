#!/bin/bash
luachon1()
{
    echo `ls data`
}
luachon2()
{
    echo `cat data/*.txt >> data/master_data.txt`
}
luachon3()
{
    echo "Nhap ten"
    read a
    echo "Cac dong co chua tu \"$name\""
    echo `cat data/master_data.txt | grep $name`
}
luachon4()
{
    maxSal=0
    for i in `ls data`
    do
        i=data/$i
        sal=$( awk -F, '{print $4}' $i )
        for salary in sal
        do
            if [ $salary -gt $maxSal ]
            then
                maxSal=$salary
            fi
        done 
    done
    echo "Muc luong co ban cao nhat: $maxSal"
}

while [ true ]
do
    echo "____________________ MENU _______________________
    1. Liet ke tat ca cac file trong /data
    2. Gop cac file tren vao file master_data.txt
    3. Nhap ten ban muon tim kiem, hien thi tat ca cac dong
    4. Hien thi muc luong cao nhat.
    Nhap lua chon : "
    read a
    case $a
    in
        1) luachon1
        ;;
        2) luachon2
        ;;
        3) luachon3
        ;;
        4) luachon4
        ;;
        0)
        exit;;
    esac
done