#!/bin/bash
max=0
i=1
imax=1
while read line
do
    len=`expr length "$line"`
    if [ $max -lt $len ]
    then
        max=$len
        imax=$i
    fi
    let i+=1

done < long.txt
echo "Dong co chieu dai lon nhat la : $imax"
echo "chieu dai la : $max"