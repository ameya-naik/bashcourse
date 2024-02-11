README.md:
	echo "The title of Project is The Guessing Game" > README.md
	echo "The time of modification of this file is $(date)" >> README.md
	echo "The code has $( cat guessinggame.sh | wc -l ) lines of code"
	
