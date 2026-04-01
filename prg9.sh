
#!/bin/bash

read -p "Enter numbers: " a b c d

smallest=$a

for num in $b $c $d
do
  if [ $num -lt $smallest ]
  then
    smallest=$num
  fi
done

echo "$smallest is the smallest number"
