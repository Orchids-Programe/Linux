#!/bin/bash
a=2
echo "a=$a"
echo $0
echo $1 #đối số

for i in $* #$* cacs bien truyen vao o doi dong lenh
do
    echo $i
done

sayHello()
{
    echo "Hello $LOGNAME, Toi la An"
}
sayHello

sum()
{
    sum=0
    for i in $*
    do
        let sum+=$i
    done
    echo $sum
    return 
}
sum 1 2 3 4 5