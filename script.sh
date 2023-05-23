#!/bin/bash

#prompt the input to receive the value 
echo Input your file name
read files
filename=$files
echo how many file you want to generate?
read num_of_file
generated_number=$num_of_file

# find the previous highest file's number
max=$(ls | grep -o "$filename[0-9]*" | grep -o "[0-9]*" | sort -n | tail -1)

# [[ -z $max ]] is a conditional statement in Bash that tests
# whether the $max variable is empty or not.
# Here, -z is an option used to check if the string is null or empty.
if [[ -z $max ]]
then
        $max=0
fi

for ((i=1; i<=$generated_number; i++))
do
        number=$((max+i))
        touch $filename$number
done

ls -lv
