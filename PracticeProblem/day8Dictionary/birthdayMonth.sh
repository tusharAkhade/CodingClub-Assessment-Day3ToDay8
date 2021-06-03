# Birthday Month

#!/bin/bash
declare -A Month
Jan=0
Feb=0
Mar=0
Apr=0
May=0
Jun=0
Jul=0
Aug=0
Sep=0
Oct=0
Nov=0
Dec=0
for (( i=0; i<50; i++ ))
do
	randomMonth=$(((RANDOM%12)+1))
	#Month[((counter++))]=$randomMonth
	echo -n "$randomMonth "
	case $randomMonth in
		1)
			Jan=$((Jan+1))
			Month[Jan]=$Jan
			;;
		2)
			Feb=$((Feb+1))
			Month[Feb]=$Feb
			;;
		3)
			Mar=$((Mar+1))
			Month[Mar]=$Mar	
			;;
		4)
			Apr=$((Apr+1))
			Month[Apr]=$Apr
			;;
		5)
			May=$((May+1))
			Month[May]=$May
			;;
		6)
			Jun=$((Jun+1))
			Month[Jun]=$Jun
			;;
		7)
			Jul=$((Jul+1))
			Month[Jul]=$Jul
			;;
		8)
			Aug=$((Aug+1))
			Month[Aug]=$Aug
			;;
		9)
			Sep=$((Sep+1))
			Month[Sep]=$Sep
			;;
		10)
			Oct=$((Oct+1))
			Month[Oct]=$Oct
			;;
		11)
			Nov=$((Nov+1))
			Month[Nov]=$Nov
			;;
		*)
			Dec=$((Dec+1))
			Month[Dec]=$Dec
			;;
	esac
done

echo $'\n'Month: ${!Month[@]}
echo People: ${Month[@]}
