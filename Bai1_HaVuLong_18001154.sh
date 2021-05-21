# Yêu cầu
#     1. Nhập vào một mảng từ bàn phím sử dụng lệnh read -a
#     2. Khai báo 1 mảng với các phần tử có giá trị khởi tạo arrayname = (...)
#     3. Nhập vào một số n từ bàn phím, nhập mảng gồm n phần tử (for - giống java)
    # In ra mảng vừa nhập
# Thực hiện yêu cầu:
#     a. Tính và in ra tổng các phần tử trong mảng
            # -Tong cac phan tu chan/le
            # -tong cac phan tu o vi tri chan/le
            # -tong cac phan tu chia het cho 3 4 5
            # -Tong cac so nguyen to/chinh phuong
#     b. Tìm phần tử lớn nhất và nhỏ nhất trong mảng
            # -Tim phan tu lon thu 2 3 4....k
#     c. Tìm và in ra tất cả các số nguyên tố/chính phương/ hoàn hảo trong mảng
#     d. 

#!/bin/bash

# read -a NAME
# echo ${NAME[@]:n}

read n
for((i=0;i<n;i++))
do
    read b
    NAME[i]=$b
done
echo “First name in an array: ${NAME[0]}”
echo “Second name in an array: ${NAME[1]}”
# In phan tu thu n
echo ${NAME[@]:3} 


