#!/bin/bash

echo "===== Special Variables Demo ====="
echo ""

echo "Script name: $0"
echo "1st argument: $1"
echo "2nd argument: $2"

echo 'All arguments ($@):'
for arg in "$@"; do
  echo "-> $arg"
done

echo "All arguments (\$*): $*"
echo "Number of arguments: $#"

ls /nonexistent 2>/dev/null
echo "Exit status of last command: $?"

echo "Current shell PID: $$"

sleep 2 &
echo "PID of last background command: $!"

echo "Last argument of last command: $_"
echo ""