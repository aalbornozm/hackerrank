# Birthday Cake Candles
read n
read array

# Find maximum
counter=0
for n in $array
do
    if(( "$counter" == "0" ))
    then
        max=$n
    elif (( "$n" > "$max" ))
    then
        max=$n
    else
        :
    fi   
    counter=1
done

# Just counting biggest candle
matches=0
for j in $array
do
    if(( "$j" == "$max" ))
    then
        let matches=$matches+1
    else
        :
    fi   
done

echo $matches
