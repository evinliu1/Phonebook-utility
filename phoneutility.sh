#!/bin/bash
#phone utility
#Evin Liu
#eliu8@student.gsu.edu

echo  "What would you like to do?"
echo  "--------------------------"
echo  "1 : add person + number   "
echo  "2 : look for a friend     "
echo  "3 : edit a name or number "
echo  "4 : read phonebook        "

read answer

if [ $answer == 1 ]
then
echo -n "Person's Name:"
read name

echo -n "Person's Number:"
read number
#reads values like name and number and then directly writes them onto the next available line in the phonebook with a "-" between them
echo "name and number added to book"
echo -e "$name - $number">>phonebook.txt
exit 0

elif [ $answer == 2 ]
then
echo -n "Who are you looking for?"
read lookingfor
fgrep $lookingfor phonebook.txt
exit 0

#after taking user input for what needs to be changed and what it should be changed it, it uses sed command to find first input and directly change it what it should be, then it permanently writes it to the text file
elif [ $answer == 3 ]
then
echo -n "What name or number would you like to edit?"
read change
echo -n "What would you like to change it to?"
read change2
sed -i "s/$change/$change2/g" phonebook.txt
exit 0

#simply prints the content of the textfile using a bar'd cat command
elif [ $answer == 4 ]
then
echo "lets take a peek"
sort phonebook.txt | cat phonebook.txt
exit 0

fi
