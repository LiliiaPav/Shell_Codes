#! /bin/bush
echo Enter a step
read step

data_start=$(date -d "2016-08-01" +"%Y-%m-%d")
data_end=$(date -d "2016-08-31" +"%Y-%m-%d")
newd=$data_start

#j=1
#until [ $j -gt 10 ]
#        do
#        echo $newd
newd=$(date -d "$newd + 1 day" +"%F")
#
#        j=$(($j+1))
#done

#if [[ "$newd" > "$data_end" ]]
#then echo "_________"
#else echo "========="
#fi

while [ $step ]
do
	date1=$(date -d "$newd + 1 day" +"%F")
	date2=$(date -d "$date1 + $step day" +"%F")
	newd=$date2
	if [[ "$newd" > "$data_end" ]]
	then 
		echo $date1 - $data_end
		break
	fi
	echo $date1 - $date2

done 

#for i in { "$data_start".."$data_end"..8}
#do 
#	echo $i
#done
