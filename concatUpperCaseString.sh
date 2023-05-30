read -p "Enter first string: " st1
read -p "Enter second string: " st2

st="$st1$st2"
echo "Concatenated string is: $st"

t=`echo "$st" | tr '[:lower:]' '[:upper:]'`
echo "The changed case string is: $t"

len=$(expr length "$st")
echo "Length of the string is: $len"
