BEGIN{
    printf "%40s %7s \n", "Họ tên", "Điểm thi"
    b=1000
    max=0
}

{ 
    a[$2]= ($3+$4)/2
    for(i in a)
    {
        if(b>a[i])
        {
            b = a[i]
        }
    }
    print substr($2,0,index($2,"_")-1)
    if ( $4 > max )
    {
        max = $4 
    }
    array2[$2]=$4
}
END{
    for(i in a)
    {
        printf "%40s %7s \n", i, a[i]
    } 
    print"Tong so sinh vien la: " NR
    for(i in a)
    {
        if(a[i] == b)
        {
            print $2 " " b
        }
    }
    print"Ho sinh vien : "
    for(i in array2){
        if ( array2[i]==max)
    
        {
            print i
        }
    }
}
