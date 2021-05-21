#!/bin/awk
BEGIN{
    print "DIEM_TRUNG_BINH"
}
{
    sum1+=$3;n++
}
END{
    if(n>0) print sum1/n
}