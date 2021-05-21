arr=( 1 2 3 4 5 6 7 9 )
luachon1()
{
    echo "Thư mục đường dẫn : " `pwd`
    echo "Các tiến trình đang chạy : " `ps`
    echo "Tên người dùng : " `whoami`
    echo "Thời gian là : " `date`
}

luachon2(){
    echo `ls | grep -E "^D.+p$"`
}

luachon3(){
    echo `ls | grep -E ".+[0-9]+."`
}

luachon4(){
    index=0
    for (( i=0 ; i < ${#arr[@]} ; i++ ))
    do
        if [ $(songuyento ${arr[i]}) -eq 1 ]
        then
            ar[index]=${arr[i]}
            let index+=1
        fi
    done
    echo ${ar[@]}
}

# read n
# for((i=0;i<n;i++))
# do
#     read a
#     arr[i]=$a
# done

songuyento()
{
    a=$1
    flag=1
    if [ $a -lt 2 ]
    then
        flag=0
    fi

    d=$( echo "sqrt($a)" | bc ) 
    for((i=2;i<=$d;i++))
    do
        if [ $((a%d)) -eq 0 ]
        then
            flag=0
        fi
    done

    if [ $flag -eq 1 ] 
    then
        echo 1
    else
        echo 0
    fi
}


dialog --backtitle "Linux Shell Script Tutorial" --title "Main
Menu" --menu "Move using [UP] [DOWN],[Enter] to select" 15 50 4 Option1 "luachon1" Option2 "luachon2" Option3 "luachon3" Option4 "luachon4" 2>/tmp/menuitem.$$
menuitem=`cat /tmp/menuitem.$$`
opt=$?
case $menuitem in
    Option1) luachon1;;
    Option2) luachon2;;
    Option3) luachon3;;
    Option4) luachon4;;
esac
rm -f /tmp/menuitem.$$