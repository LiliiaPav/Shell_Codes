#!/bin/bash/

# Your task is to identify whether each of the students has passed or failed.
# A student is considered to have passed when (s)he has a score or more in each of the three subjects.

awk ' { if ( $2 >= 50 && $3 >= 50 && $4 >= 50 ) print $1,":","Pass";
	else print $1,":","Fail" }' score.txt

echo __________________________________________________________

awk ' { if ( $2+$3+$4 >= 80*3 ) print $1,$2,$3,$4,":","A";
	else if ( $2+$3+$4 >= 60*3 ) print $1,$2,$3,$4,":","B";
    else if ( $2+$3+$4 >= 50*3 ) print $1,$2,$3,$4,":","C";
    else print $1,$2,$3,$4,":","FAIL" }' score.txt
