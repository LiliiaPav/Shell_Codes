#! /bin/bash

my_date="1984-04-04"
#date -d "$my_date"
echo "Date is " $(date -d "$my_date") 
#date
#echo "date only " $(date +"%Y-%m-%d")

#date +%F-%T
#date +%D
#echo "date:" $(date +%d)
#echo "month: " $(date +%m)
#echo "day of the week" $(date +%w)
#echo "minutes" $(date +%M)
#echo "seconds" $(date +%S)

echo "yesterday" $(date -d "-1 day")

echo "tomorrow" $(date -d "+1 day")

echo "my first week:"
date -d "$my_date + 1 week"

new_date="2016-02-29"
date -d "$new_date + 1 day"

date -d "$new_date + 1 year"
date -d "$new_date - 1 year"
date -d "$new_date - 1 year - 1 day"
