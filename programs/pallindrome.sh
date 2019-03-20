echo "Ener a Number"
read num
rev=0
rem=0
n=$num
while [ $n -gt 0 ]
do
    rem=`expr $n % 10`
    rev=`expr $rev \* 10 + $rem`
    n=`expr $n / 10`
done 
if [ $num -eq $
rev ]
then
    echo "Pallindrome" 
else 
    echo "Not a Pallindrome"
fi 
