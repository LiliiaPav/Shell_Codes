#! /bin/bush
echo Enter a step
read step

data_start=$(date -d "2016-08-01" +"%Y-%m-%d")
data_end=$(date -d "2016-08-31" +"%Y-%m-%d")
newd=$data_start

#newd=$(date -d "$newd + 1 day" +"%F")

while [[ "$data_end" > "$newd" ]]
do 
range=0
echo Result is: 
while [ $range -lt $step ]
do
	echo $newd
	newd=$(date -d "$newd + 1 day" +"%F")

	if [[ "$newd" ==  "$data_end" ]];then 
        echo $newd
        exit
fi

	
	range=$(( $range + 1 ))
done
echo __________________________

done 

