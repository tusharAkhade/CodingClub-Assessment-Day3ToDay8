# Program to find factorial of a number.

echo "Program to find factorial of a number."
read -p "Enter a number : " num
fact=1
for (( i=1; i<=num; i++ ))
do
	fact=$((fact*i))
done
echo "Factorial of $num is: $fact"
