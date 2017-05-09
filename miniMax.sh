# Mini-Max Sum
read array

# Find maximum and minimum
counter=0
for n in $array
do
    if(( "$counter" == "0" ))
    then
        max=$n
        min=$n
    elif (( "$n" > "$max" ))
    then
        max=$n
    elif (( "$n" < "$min" ))
    then 
        min=$n
    else
        :
    fi   
    counter=1
    let sum=$sum+$n
done
let sum_max=$sum-$min
let sum_min=$sum-$max
echo $sum_min $sum_max
