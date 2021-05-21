#!/bin/bash
echo "Xin moi ban chon hanh dong?
1. Xem dung luong su dung cua may tinh
2. Xem noi dung thu muc hien hanh
3. Xem cac tien trinh dang chay tren may tinh duoi dang cay
4. Xem ten nguoi dung dang nhap he thong"

case $1
in 
    1) echo `df`
    exit;;
    2) echo `cat Bai4_HaVuLong_18001154.sh`
    exit;;
    3) echo `ps`
    exit;;
    4) echo $USER
    exit;;
    *) exit;;
esac