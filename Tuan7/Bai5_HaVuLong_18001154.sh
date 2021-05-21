luachon1()
{
    echo `pwd`
    echo `ls`
}
luachon2()
{
    echo `ps`
}
luachon3()
{
   
    for i in *.doc
    do
        mv "$i" "${i%doc}txt"
    done
}

luachon4()
{
    echo `ls | grep "^abc"`
}

luachon5()
{
    echo `ls | grep -E .*[0-9]+.*`
}

luachon6()
{
    echo `ls | grep -E .*[A-Z]+.*`
}


while [ true ]
do
    read a
    case $a
    in
        0)
        break
        exit;;
        1)
        luachon1;;
    
        2)
        luachon2;;
    
        3)
        luachon3;;

        4)
        luachon4;;

        5)
        luachon5;;
    
        6)
        luachon6;;

    esac
done
