# Pallindrome or not

echo "Program to check number is Pallindrome or not."
read -p "enter a number: " num
rev=0
#Define function "pallindrome"
function pallindrome() {
	temp=$1
	while [ $temp -ne 0 ]
	do
		rem=$((temp%10))
		rev=$(((rev*10)+rem))
		temp=$((temp/10))
	done
	if [ $num -eq $rev ]
	then
		echo "$num is a pallindrome number"
	else
		echo "$num is not a pallindrome number"
	fi
}
#Invole/call the function "pallindrome"
pallindrome $num
