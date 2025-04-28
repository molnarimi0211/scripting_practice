#!/bin/bash

total=0
index=0

for arg in "$@"; do
  # Check if the index is even
  if (( index % 2 == 0 )); then
    total=$((total + arg))
  fi
  ((index++)) # Increment the index
done

echo $total
