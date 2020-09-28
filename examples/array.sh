#!/usr/bin/env bash

# Demostrates use of array
# Author: Maros Kukan


# Example-1: Append array element by using shorthand operator

# Declare a string array
declare -a departments=("Accounting" "Engineering" "Human Resources" "Sales")

# Add new element at the end of the array
departments+=("Finance")

# Iterate the loop to read and print each array element
for department in "${departments[@]}"
do
     echo "$department"
done


# Example-2: Appending array element by defining the last index, behaves differently in bash vs zsh

# Declare a string array
declare -a languages=("NodeJS" "Bash" "Python" "Tcl")

# Add new element at the end of the array
languages[${#languages[@]}]="Java"

# Iterate the loop to read and print each array element
for language in "${languages[@]}"
do
     echo $language
done


# Example-3: Appending array element by using bracket

# Declare a string array
vegetables=("Carrot" "Avocado" "Onion" "Potato" "Garlic")

# Add new element at the end of the array
vegetables=(${vegetables[@]} "Beans")

# Iterate the loop to read and print each array element
for vegetable in "${vegetables[@]}"
do
     echo $vegetable
done

# Example-4: Append multiple elements at the end of the array

# Declare two string arrays
team_a=("Adam" "Ian" "Filip" "Jan")
team_b=("John" "Bob" "Sally" "Michael")

# Add the second array at the end of the first array
contestants=(${team_a[@]} ${team_b[@]})

# Iterate the loop to read and print each array element
for contestant in "${contestants[@]}"
do
     echo $contestant
done

