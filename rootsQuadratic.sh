read -p "Enter a:" a
read -p "Enter b:" b
read -p "Enter c:" c

d=`echo "($b * $b) - (4 * $a * $c)" | bc`
x1=`echo "(-$b + sqrt($d)) / (2 * $a)" | bc`
x2=`echo "(-$b - sqrt($d)) / (2 * $a)" | bc`

echo "Root 1: $x1"
echo "Root 2: $x2"
