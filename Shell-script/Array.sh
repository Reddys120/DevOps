#!/bin/bash

echo "===== 1. Indexed Array: Declaration and Access ====="
fruits=("apple" "banana" "cherry")
echo "First fruit: ${fruits[0]}"
echo "All fruits: ${fruits[@]}"
echo ""

echo "===== 2. Loop Through Array ====="
colors=("red" "green" "blue")
for color in "${colors[@]}"; do
  echo "Color: $color"
done
echo ""

echo "===== 3. Array Length ====="
animals=("cat" "dog" "rabbit")
echo "Number of animals: ${#animals[@]}"
echo ""

echo "===== 4. Add or Update Element ====="
cities=("Paris" "London")
cities[2]="Tokyo"      # Add
cities[1]="Berlin"     # Update
echo "All cities: ${cities[@]}"
echo ""

echo "===== 5. Delete Element ====="
nums=(10 20 30 40)
unset nums[1]
echo "After deletion: ${nums[@]}"
echo ""

echo "===== 6. Loop by Index ====="
cars=("BMW" "Audi" "Tesla")
for i in "${!cars[@]}"; do
  echo "Car $i: ${cars[$i]}"
done
echo ""

echo "===== 7. Associative Array (Key-Value Pairs) ====="
declare -A capitals
capitals[France]="Paris"
capitals[Germany]="Berlin"
capitals[Japan]="Tokyo"
echo "Capital of Germany: ${capitals[Germany]}"
echo "All countries: ${!capitals[@]}"
echo "All capitals: ${capitals[@]}"
echo ""
