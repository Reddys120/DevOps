#!/bin/bash

echo "===== ASSOCIATIVE ARRAY ====="
declare -A person
person[name]="Bob"
person[age]=30
echo "Name: ${person[name]}"
echo "Age: ${person[age]}"
echo ""