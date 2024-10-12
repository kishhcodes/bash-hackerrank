#Problem: https://www.hackerrank.com/challenges/bash-tutorials---compute-the-average/problem

#!/bin/bash

# Read the number of integers
read t
sum=0

# Loop to read each integer and add it to the sum
for (( i=0; i<t; i++ ))
do
    read num
    sum=$((sum + num))
done

# Calculate the average using bc and format to three decimal places using printf
average=$(echo "scale=4; $sum / $t" | bc)
printf "%.3f\n" "$average"
