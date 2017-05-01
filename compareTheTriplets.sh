declare -i apoints
declare -i bpoints
read a
read b

apoints=0
bpoints=0

k=0
for z in $a
    do
    aa[k]=$z
    let k+=1
    done

l=0
for y in $b
    do
    bb[l]=$y
    let l+=1
    done
    
for i in {0..2}
    do
        if (("${aa[i]}" > "${bb[i]}"))
        then
            apoints=$apoints+1
        elif (("${aa[i]}" < "${bb[i]}"))
        then 
            bpoints=$bpoints+1
        else
            #echo 'equals'
            :
        fi
    done
echo $apoints $bpoints
