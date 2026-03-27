
#!/bin/bash

read -p "Enter first number: " a
read -p "Enter second number: " b
read -p "Enter third number: " c
read -p "Enter fourth number: " d

if [ "$a" -lt "$b" ] && [ "$a" -lt "$c" ] && [ "$a" -lt "$d" ]; then
    echo "$a is the smallest number"
elif [ "$b" -lt "$a" ] && [ "$b" -lt "$c" ] && [ "$b" -lt "$d" ]; then
    echo "$b is the smallest number"
elif [ "$c" -lt "$a" ] && [ "$c" -lt "$b" ] && [ "$c" -lt "$d" ]; then
    echo "$c is the smallest number"
else
    echo "$d is the smallest number"
fi
