README.md: guessinggame.sh
	echo "# Guessing Game Project" > README.md
	echo "" >> README.md
	echo "## Date and Time" >> README.md
	date >> README.md
	echo "" >> README.md
	echo "## Number of lines of code in guessinggame.sh" >> README.md
	wc -l < guessinggame.sh >> README.md 
