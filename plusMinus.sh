#!/bin/bash
read n
read array

positive=0
negative=0
zero=0

for z in $array
do
    if (("$z" > "0"))
    then
        let positive=$positive+1
        #echo 'pos: '$positive
    elif (("$z" < "0"))
    then 
        let negative=$negative+1
        #echo 'neg: '$negative
    else
        #zero
        let zero=$zero+1
        #echo 'zero: '$zero
    fi
done

ratio1=`echo $positive/$n|bc -l`
ratio2=`echo $negative/$n|bc -l`
ratio3=`echo $zero/$n|bc -l`

echo $ratio1
echo $ratio2
echo $ratio3
