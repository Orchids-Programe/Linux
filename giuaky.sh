#!/bin/bash

#Bai1

# luachon1(){

# }
luachon2(){
    echo `ls -a`
}
luachon3(){
    echo `ls | grep -E "^b+[^c]+$"`
}
luachon4(){
    echo `ls | grep '.*a.*a.*' >> output.txt`
}
# luachon5(){
    
# }

sochinhphuong(){
    d=$( echo "sqrt($1)" | bc )
    if [ $((d*d)) -eq $1 ]
    then
        echo 1
    else 
        echo 0
    fi
    echo 
}
luachon6(){
    for((i = 0; i < ${#array[i]}; i++))
    do
        if [ $(sochinhphuong ${array[i]}) -eq 1 ]
        then
            arr[i]=${array[i]}
        fi
    done
    echo "Cac so chinh phuong trong day vua nhap la : ${arr[@]}"
}
luachon6 1 2 3 4 5 6
luachon7(){
    echo `$USER`
}
case $1
in
    
esac

