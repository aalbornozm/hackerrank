# Staircase problem from hackerrank
read n

bar='#'
print=''
blank=" "
for (( i=1; i<=$n; i++ ))
do
    let counter=$n-$i
    for (( c=1; c<=$n; c++ ))
        do
        #echo 'iteration: '$c
            if (("$c" > "$counter"))
            then
                print+=$bar
                #array[$c]='#'
            else
                print+=$blank
                #array[$c]='_'
            fi
        done
        echo "${print}"
        print=''
        #echo ${array[@]}  
done
