BEGIN{
    sum=0
    count=1
    max=0
}

{
    sum+=$3
    array[$4]++
    array1[$4]+=$3
    array2[$2]+=$3
    for (i in array2)
    {
        if (array2[i] > max)
        {
            max = array2[i]
        }
    }
}

END{
    print "Tong so mau " 
    print "Cac nhom mau ma sinh vien co"
    for(i in array)
        print i 

    print "In tong so mau theo loai"
    for(i in array1)
        print i " " array1[i]

    print "STT   TenSV         Somau"
    for (i in array2)
    {
        print count "     " i "    " array2[i]
        count ++
    }

    print "sinh vien hien mau nhieu nhat"
    for (i in array2)
    {
        if (array2[i] == max)
        {
            print i " " array2[i]
        }
        
    }
}