#! /bin/bash

data_start=$(date -d "2016-08-01")
data_end=$(date -d "2016-08-31")
newd=$data_start
#echo $i
j=1
until [ $j -gt 10 ]
	do
	echo $newd
	newd=$(date -d "$newd + 1 day")
	
	j=$(($j+1))
done

