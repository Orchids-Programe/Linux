BEGIN{
    print "Diem_trung_binh"
    n=0
    sum1=0
}
{
    sum1+=$3
    sum2+=$4
    sum3+=$5
    n++
}
END{
    if(n>0) print sum1/n " " sum2/n " " sum3/n
}