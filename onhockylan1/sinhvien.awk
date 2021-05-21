BEGIN{
    print "noi dung cac dong le la: "
    max=0
}

{
    if ( $1 % 2 != 0 )
    {
        print  #in tat ca
    }

    #in tong so lop
    array[$3]++
    array1[$4]++

    

    if ( $5 > max )
    {
        max = $5 
    }
    array2[$2]=$5
}

END{
    print "Tong so dong la : " NR
    print "Tong so sinh vien la : " NR
    for ( i in array )
        print i " " array[i]
    print "Tong so lop " length(array)

    print "So sinh vien theo que quan" 
    for ( i in array1 )
        print i " " array1[i]
    print "Tong so que quan " length(array1)
    print "Sinh vien co diem cao nhat"
    for(i in array2){
        if ( array2[i]==max)
    
        {
            print i
        }
    }

}

