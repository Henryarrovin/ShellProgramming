fact=1
read -p "Enter the number to find factorial:" n
i=1
while test $i -le $n
do
    fact=`expr $fact \* $i`
    echo "Factorial of $i is $fact..."
    i=`expr $i + 1`
done
