#!/bin/bash
echo "Xin moi ban chon hanh dong
1. In ra ten sinh vien va hien thi thu muc dang hien hanh
2. Dem xem co bao nhieu file va thu muc trong thu muc hien hanh
3. Nhap vao so n va in ra so dao nguoc cua so n
4. Doi ten tat ca cac tep tin co duoi .doc sang .txt trong thu muc hien hanh
5. Tim kiem va hien thi cac tep tin co ten bat dau bang chuoi abc
va ket thuc bang .doc trong thu muc hien hanh
6. Tim kiem va hien thi cac dong co chua it nhat 2 chu so 8 trong thu muc hien hanh
0. Lua chon thoat khoi menu"

#!bash/bin

fun_1(){
    echo "Tên sinh viên : Đàm Thị Hồng Nhung"
    echo pwd
}
fun_2(){
    echo ls | wc -l
}
fun_3(){
    echo "Nhập chuỗi: "
    read data
    h=${#data} 
    for ((i = h - 1; i >= 0; i--))
    do
	    newString=$newString${data:i:1}
    done
    echo "new string is : "$newString
}
fun_4(){
	in=`ls | grep ".*\.doc$"`
	for i in $in
	do 
		name="${data%%.*}"
		end=".txt"
		newname=$name$end
		mv $i $newname
	done
}
fun_5(){
echo ls | grep "\(^abc\).*\(doc$\)"
}
fun_6(){
	x=`ls | grep ".*"`
	for i in $x
	do
		echo $i ": "
		data=`grep ".*8.*8.*" $i`
		for j in $data
		do
			echo "    "$j
		done
	done
}
while (true)
do
	echo "_____________________Menu_______________________"
	echo "1: In ra tên sinh viên và hiển thị thư mục đang hiện hành"
	echo "2: Đếm xem có bao nhiêu file và thư mục trong thư mục hiện hành"
	echo "3: Nhập vào số n, in ra số đảo ngược của số n."
	echo "4: Đổi tên tất cả các tệp tin có đuôi .doc sang .txt trong thư mục hiện hành"
	echo "5: Tìm kiếm và hiển thị các tệp tin có tên bắt đầu bằng chuỗi abc và kết thúc bằng "doc" trong thư mục hiện hành"
	echo "6: Tìm kiếm và hiển thị các dòng có chứa ít nhất 2 chữ số 8 trong thư mục hiện hành"
	echo "0: Thoát khỏi menu."
	echo "Nhập lựa chọn: "
	read a
	case $a in
	0)
		echo " the end "
		break 
		;;
	1)
		fun_1
		;;
	2)
		fun_2
		;;
	3)
		fun_3
		;;
	4)
		fun_4
		;;
	5)
		fun_5
		;;
	6)
		fun_6
		;;
	*)
		echo " not found !!! "
		;;
	esac
done