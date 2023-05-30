read -p "Enter range:" rng
echo "The prime nos are:"
echo 2
j=3
while test $j -le $rng
do 
    i=2
    x=`expr $j - 1`
    while test $i -le $x
    do
        if test `expr $j % $i` -ne 0
        then
            i=`expr $i + 1`
        else
            break
        fi
    done
    if test $i -eq $j
    then
        echo $j
    fi
    j=`expr $j + 1`
done
