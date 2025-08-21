#!/usr/bin/env bash
# File: guessinggame.sh

# Function to count only regular files in the current directory
function file_count {
  find . -maxdepth 1 -type f | wc -l
}

echo "Welcome to the Guessing Game!"
echo "How many files are in the current directory?"

correct=$(file_count)
guess=-1

while [[ $guess -ne $correct ]]
do
  read -p "Enter your guess: " guess
  if [[ ! $guess =~ ^[0-9]+$ ]]; then
    echo "Please enter a valid number!"
    guess=-1
  elif [[ $guess -lt $correct ]]; then
    echo "Your guess is too low. Try again!"
  elif [[ $guess -gt $correct ]]; then
    echo "Your guess is too high. Try again!"
  else
    echo "🎉 Congratulations! You guessed it right."
  fi
done 
