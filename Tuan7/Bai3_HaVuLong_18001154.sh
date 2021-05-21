#!/bin/bash
giaithua(){
    n=$1
    gt=1
    for((i = 1; i <= $n; i++))
    do
        let gt*=$i
    done
    echo $gt
}

tonggiaithua()
{
    sum=0
    for((i=1; i <= $1; i++))
    do
        temp=$(giaithua $i)
        let sum+=temp
    done
    echo $sum
}
echo $(tonggiaithua 3)
