#!/bin/bash
read n
# Create an array with all values from the matrix
k=0
for i in $(seq 1 $n)
    do read a
        for z in $a
            do
            aa[$k]=$z
            let k+=1
            done
    done

# Print an array with all data from input
# echo ${aa[*]}

# Variables to store diagonal values sum
sum_a=0
sum_b=0

# move index in big array-> searching matrix's diagonals
# move index in one matrix's diagonal
let STOP=$n\*$n
START=0

for (( c=$START; c<=$STOP; ))
    do
        let sum_a=$sum_a+${aa[$c]}
        let c=$c+$n+1
    done

# move index in other diagonal
let START2=$n-1
let STOP2=$n\*$n-$n

for (( d=$START2; d<=$STOP2; ))
    do
        let sum_b=$sum_b+${aa[$d]}
        let d=$d+$n-1
    done

# Prepare output, calculate difference and absolute value
let result=$sum_a-$sum_b
echo $result | awk ' { if($1>=0) { print $1} else {print $1*-1 }}'
