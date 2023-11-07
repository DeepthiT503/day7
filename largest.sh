# Initialize an array to store the random numbers
declare -a numbers
# Generate and store 10 random 3-digit numbers
for ((i = 0; i < 10; i++)); do
    # Generate a random 3-digit number between 100 and 999
    number=$((RANDOM % 900 + 100))
    numbers+=($number)
done
# Initialize variables for 2nd largest and 2nd smallest
largest=0
second_largest=0
smallest=1000
second_smallest=1000
# Find the 2nd largest and 2nd smallest elements
for num in "${numbers[@]}"; do
    if [ $num -gt $largest ]; then
        second_largest=$largest
        largest=$num
    elif [ $num -gt $second_largest ] && [ $num -ne $largest ]; then
        second_largest=$num
    fi

    if [ $num -lt $smallest ]; then
        second_smallest=$smallest
        smallest=$num
    elif [ $num -lt $second_smallest ] && [ $num -ne $smallest ]; then
        second_smallest=$num
    fi
done

# Print the 2nd largest and 2nd smallest elements
echo "Random Numbers: ${numbers[@]}"
echo "2nd Largest: $second_largest"
echo "2nd Smallest: $second_smallest"
