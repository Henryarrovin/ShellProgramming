read -p "Enter the range of numbers:" num
echo "Enter the number one by one:"
for((i=1; i<=num; i++))
do
    read a[$i]
done

for((i=1; i<=num; i++))
do
    for((j=`expr $i + 1`; j<=num; j++))
    do
        if [ ${a[$i]} -gt ${a[$j]} ]
        then
            t=${a[$i]}
            a[$i]=${a[$j]}
            a[$j]=$t
        fi
    done
done
echo "The smallest number is ${a[1]}"
