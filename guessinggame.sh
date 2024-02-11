function ltgt {
	 [[ $1 -lt $2 ]] && echo "The Numer of files is More than $1. Please Guess again with a bigger number" || echo "The Numer of files is less than $1. Please Guess again with a smaller number"
 }

echo "Please Guess the number of files"
flag=0
filecount=$(ls | wc -l)

while [[ $flag -eq 0 ]]
do

	read guess
	echo "You Guessed: $guess"
	if [[ $guess -eq $filecount ]]
	then
		echo "Congratulations!! Your Guess is correct. The number of files is $guess"
		flag=1
	else
        	ltgt $guess $filecount
	fi
done

