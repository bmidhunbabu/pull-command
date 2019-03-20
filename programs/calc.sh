choice="y"
while [ $choice = "y" ]
do
    echo "1. Addition"
    echo "2. Subtraction"
    echo "3. Multiplication"
    echo "4. Division"
    echo "5. Modulus"
    echo "Choose One"
    read ch
    echo "Enter two numbers"
    read a
    read b
    if [ $ch -eq 1 ]
    then
        echo "result : "
        expr $a + $b
        
    elif [ $ch -eq 2 ] 
    then
        echo "result : "
        expr $a - $b
        
    elif [ $ch -eq 3 ] 
    then
        echo "result : "
        expr $a \* $b
                
    elif [ $ch -eq 4 ] 
    then
        if [ $b -eq 0 ]
        then
            echo "Division Not Possible"
        else 
            echo "result : " `echo "scale=2; $a/$b" | bc`
        fi
        
    elif [ $ch -eq 5 ] 
    then
        echo "result : "
        expr $a % $b
    fi
    echo "Do you want to continue"
    read choice
done
