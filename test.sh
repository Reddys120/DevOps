#!/bin/bash

# ===== Variables =====
name="Alice"
count=3
fruits=("apple" "banana" "cherry")

echo "Hello, $name!"
echo "You have ${count} fruits."

# ===== Conditions =====
if [ "$count" -gt 2 ]; then
  echo "You have more than two fruits."
else
  echo "Two or fewer fruits."
fi

# ===== Loops =====
echo "Listing fruits:"
for fruit in "${fruits[@]}"; do
  echo "- $fruit"
done

# While loop example
num=1
echo "Counting to 3:"
while [ "$num" -le 3 ]; do
  echo "Number: $num"
  ((num++))
done

# ===== Functions =====
greet() {
  local user=$1
  echo "Greetings, $user!"
}

greet "Bob"

# Function with return
square() {
  local n=$1
  echo $((n * n))
}

result=$(square 5)
echo "Square of 5 is: $result"

# ===== Script Arguments =====
# Run as: ./demo.sh arg1 arg2
echo "Script arguments:"
echo "1st argument: $1"
echo "2nd argument: $2"
echo "Total arguments: $#"
echo "All arguments: $@"

# Example of checking argument
if [ "$1" = "admin" ]; then
  echo "Hello Admin!"
else
  echo "Hello User!"
fi
