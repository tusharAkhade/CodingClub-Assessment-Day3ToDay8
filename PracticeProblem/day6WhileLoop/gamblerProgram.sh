# Gambler program

rupees=100
win=1
lose=0
bet=1
betCount=0
winCount=0
while [ $rupees -gt 0 -a $rupees -lt 200 ]
do
	random=$((RANDOM%2))
	((betCount++))
	#echo "Number of times bet occured: $betCount"
	if [ $random -eq $win ]
	then
		rupees=$((rupees+$bet))
		winCount=$((winCount+1))
		#echo "Number of times won: $winCount"
	else
		rupees=$((rupees-$bet))
	fi
done
echo "Number of times bet occured: $betCount"
echo "Number of times won: $winCount"
