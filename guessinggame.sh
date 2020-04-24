#!/bin/bash
echo "*** Guessing game bash script ***"

guessing_file_count(){
echo "inside function"
file_count=`ls -al|grep "^-"|wc -l`

if [ $file_count -eq 0 ]
then
	echo " No such files and directory in current directory"
	exit
fi

while true;
do
echo "please enter your guess_value"

read guess_value

if [ $guess_value -lt $file_count ]
then
echo "your guess was too low than the correct value"
echo "Try Again"

elif [ $guess_value -gt $file_count ]
then
echo "your guess was too high than the correct value"
echo "Try Again"

else
echo " Congratulations ,your guess is correct "
break;
fi
done
}
echo "guess the file count in current directory "
guessing_file_count
