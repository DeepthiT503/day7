declare -a numbers
for ((i = 0; i < 10; i++)); do
    number=$((RANDOM % 900 + 100))
    numbers+=($number)
done

sorted_numbers=($(printf '%s\n' "${numbers[@]}" | sort -n))


second_largest=${sorted_numbers[-2]}
second_smallest=${sorted_numbers[1]}


echo "Random Numbers: ${numbers[@]}"
echo "Sorted Numbers: ${sorted_numbers[@]}"
echo "Second Largest: $second_largest"
echo "Second Smallest: $second_smallest"
