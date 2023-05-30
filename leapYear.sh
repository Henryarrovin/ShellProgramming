read -p "Enter the year:" year
if test `expr $year % 100` -eq 0
then
    if test `expr $year % 400` -eq 0
    then
        echo "$year is a leap year..."
    else
        echo "$year is not a leap year... "
    fi
elif test `expr $year % 4` -eq 0
then 
    echo "$year is a leap year..."
else
    echo "$year is not a leap year..."
fi
