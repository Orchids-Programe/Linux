#!/bin/bash
read a
sum=0
for(( i=0;i <= a; i++ ))
do
    let sum+=i
done
echo $sum