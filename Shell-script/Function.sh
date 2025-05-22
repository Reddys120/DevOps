#!/bin/bash

# 1. Basic Function
say_hello() {
  echo "Hello, world!"
}

# 2. Function with Arguments
greet_user() {
  echo "Hello, $1! Welcome to $2."
}

# 3. Function that Returns a Value (via echo)
add_numbers() {
  local sum=$(( $1 + $2 ))
  echo "$sum"
}

# 4. Function Calling Another Function
calculate_and_greet() {
  result=$(add_numbers $1 $2)
  echo "Hi $3, the result of $1 + $2 is $result."
}

# 5. Function with Exit Code
is_even() {
  if (( $1 % 2 == 0 )); then
    return 0  # success
  else
    return 1  # failure
  fi
}

# ----- Calling the functions -----

say_hello
greet_user "Alice" "Linux World"

sum=$(add_numbers 5 7)
echo "Sum is: $sum"

calculate_and_greet 8 4 "Bob"

is_even 10
if [ $? -eq 0 ]; then
  echo "10 is even."
else
  echo "10 is odd."
fi
