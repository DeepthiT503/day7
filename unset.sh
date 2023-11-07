declare -a fruits=("Mango" "Guava" "Banana")
unset fruits[0]
echo ${fruits[@]}
