echo "Enter the student name:"
read name
echo "Enter Register Number:"
read reg
echo "Enter the three subject marks:"
read -p "Enter mark1:" m1
read -p "Enter mark2:" m2
read -p "Enter mark3:" m3
total=`expr $m1 + $m2 + $m3`
avg=`expr $total / 3`
echo ""
echo "          MARK LIST"
echo "Student Name: $name"
echo "Reg No: $reg"
echo "Subject Marks:"
echo "Mark1: $m1"
echo "Mark2: $m2"
echo "Mark3: $m3"
echo "Total: $total"
if test $m1 -lt 50 -o $m2 -lt 50 -o $m3 -lt 50
then
    echo "Result: Fail"
else
    echo "Result: Pass"
    echo "Average: $avg"
    if [ $avg -gt 80 ]
    then 
        echo "Grade: Distinction"
    elif [ $avg -gt 70 ]
    then 
        echo "Grade: First Class"
    elif [ $avg -gt 60 ]
    then
        echo "Grade: Second Class"
    elif [ $avg -gt 50 ]
    then
        echo "Grade: Third Class"
    fi
fi
