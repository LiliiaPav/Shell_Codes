#!/bin/bash

#echo $0 $# $1

echo "-------------------------------"

#cat $1 | grep e

function Display (){
	echo 'your first  argument was ' $1
	echo 'your second argument was ' $2
	res=`expr $1 + $2`
	echo 'result is ' $res 
	if [ $res -eq  5 ]
	then 
		echo 'result is 5'
	elif [ $res -gt 5 ]
	then
		echo 'result is more then 5'
	else
		echo 'result is less then 5'
	fi
	
	return $res
}

#Display $1 $2

function new_f() {
	new=`expr $1\*5`
	echo "__________________________"
	echo $new
}

a=$(Display 2 4)
new_f $#
#echo $a


echo "-------------------------------"

wc -l $0
