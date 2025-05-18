#!/bin/bash

echo "===== Special Variables Demo ====="
echo ""

# $0 - Script name
echo "Script name: $0"

# $1 to $9 - Positional parameters
echo "1st argument: $1"
echo "2nd argument: $2"

# $@ - All arguments (individually quoted)
echo 'All arguments ($@):'
for arg in "$@"; do
  echo "-> $arg"
done

# $* - All arguments (as a single word)
echo "All arguments (\$*): $*"

# $# - Number of arguments
echo "Number of arguments: $#"

# $? - Exit status of last command
ls /nonexistent 2>/dev/null
echo "Exit status of last command: $?"

# $$ - PID of the current shell
echo "Current shell PID: $$"

# $! - PID of last background command
sleep 2 &
echo "PID of last background command: $!"

# $_ - Last argument of the previous command
echo "Last argument of last command: $_"

echo ""