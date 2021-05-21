#!/bin/bash
var=`date +%H`

if [ $var -le 10 -a $var -ge 1 ]
then
    echo "Chao buoi sang"
elif [ $var -gt 10 -a $var -le 16 ]
then    
    echo "Chao buoi trua"
else
    echo "Chao buoi toi"
fi