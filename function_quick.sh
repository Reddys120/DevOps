#!/bin/bash

# 1. Greeting Function (with argument)
greet() {
  echo "Hello, $1!"
}
greet "Alice"

echo ""

# 2. Addition Function (returns result)
add() {
  echo $(( $1 + $2 ))
}
result=$(add 5 7)
echo "Sum: $result"

echo ""

# 3. Check Even Number
is_even() {
  (( $1 % 2 == 0 ))
}
if is_even 8; then
  echo "Even"
else
  echo "Odd"
fi

echo ""

# 4. Function with default value
welcome() {
  local name=${1:-Guest}
  echo "Welcome, $name!"
}
welcome "Bob"
welcome

echo ""

# 5. Logging Function (with timestamp)
log() {
  echo "$(date '+%Y-%m-%d %H:%M:%S') - $1"
}
log "Starting script"