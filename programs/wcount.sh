file="avg.sh"
chars=`cat $file | wc -m`
echo "Characters : $chars"
words=`cat $file | wc -w`
echo "Words : $words"
lines=`cat $file | wc -l`
echo "Lines : $lines"
#spaces=`expr $words - $lines`
spaces=`grep -o " " $file | wc -l`
echo "Spaces : $spaces"
alphas=`grep -o "[a-Z0-9]" $file | wc -l`
schars=`expr $chars - $lines - $spaces - $alphas` 
echo "Special chars : $schars"
