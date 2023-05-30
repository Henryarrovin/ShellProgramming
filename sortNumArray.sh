read -p "Enter range of numbers:" n
echo "Enter the numbers one by one:"
for((i=1; i<=n; i++))
do
    read a[$i]
done
for((i=1; i<=n; i++))
do
    for((j=`expr $i + 1`; j<=n; j++))
    do
        if test ${a[$i]} -gt ${a[j]}
        then
            t=${a[$i]}
            a[$i]=${a[$j]}
            a[$j]=$t
        fi
    done
done
echo "The sorted numbers are:"
for((i=1; i<=n; i++))
do
    echo "${a[$i]}"
done
