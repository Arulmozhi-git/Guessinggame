#!/bin/bash bash
# File: guessinggame.sh

function welcomemessage {
echo "How many files are there in current directory?"
}

welcomemessage

nooffiles=$(pwd | ls | wc -l)

until [[ $response -eq $nooffiles ]]; do
	read response
	if [[ $response -gt $nooffiles ]]
	then
		echo "You entered $response, which is greater than the requested number, try again"
	elif [[ $response -lt $nooffiles ]]
	then
		echo "You entered $response, which is lower than the requested numner, try again"
	fi
done

echo "You have guessed the right number, $response, Bravo."
echo "End Program."
