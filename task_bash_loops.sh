#! /bin/bush
echo Enter a step
read step

data_start=$(date -d "2016-08-01" +"%Y-%m-%d")
data_end=$(date -d "2016-08-31" +"%Y-%m-%d")
newd=$(date -d "$data_start - 1 day" +"%F")

while [ $step ]
do
	date1=$(date -d "$newd + 1 day" +"%F")
	date2=$(date -d "$newd + $step day" +"%F")
	newd=$date2
	if [[ "$date2" > "$data_end" ]] || [[ "$date1" > "$data_end" ]]
	then 
		echo $date1 - $data_end
		break
	fi
	echo $date1 - $date2

done 
