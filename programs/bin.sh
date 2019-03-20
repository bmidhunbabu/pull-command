echo "Enter the limit"
read limit
echo "Enter $limit numbers"
for(( i=0; i<limit; i++ ))
do
    read a
    num[i]=$a
done
echo "Before Sorting"
for(( i=0; i<limit; i++ ))
do
    echo ${num[$i]}
done
for(( i=0; i<limit; i++ ))
do
    for(( j=$i+1; j<limit; j++ ))
    do
        if [ ${num[$j]} -lt ${num[$i]} ] 
        then
            temp=${num[$i]}
            num[$i]=${num[$j]}
            num[$j]=$temp
        fi
    done
done
echo "After Sorting"
for(( i=0; i<limit; i++ ))
do
    echo ${num[$i]}
done
echo "Enter the number to search"
read n
beg=0
end=`expr $limit - 1`
#mid=`expr $beg + $end / 2`
mid=$((((beg+end))/2))
flag=0
while [ $beg -le $end ]
do
    if [ ${num[$mid]} -eq $n ]
    then
        flag=1
        break
    elif [ ${num[$mid]} -lt $n ]
    then
        beg=`expr $mid + 1`
    else 
        end=`expr $mid - 1`
    fi
    mid=$((((beg+end))/2))
done
if [ $flag -eq 1 ]
then
    echo "Number found"
else 
    echo "Number not found"
fi


















