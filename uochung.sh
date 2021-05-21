rm -rf kq
rm -rf kqsnt
read -p “nhap so m: ” M
N=$M
lim=$N
while [[ $lim -ne 0 ]]
do
a=$(( $M % $lim))
b=$(( $N % $lim))
if [ $a -eq 0 -a $b -eq 0 ];then
echo $lim >> kq
fi
lim=$(($lim -1))
done