#!/bin/bash

line=($(<$1))
#echo "${line[0]}"

thedate=(${line[1]})
#echo "$thedate"

n=("${thedate//// }")
#echo "$n"

date=`echo $n | cut -c1-2`
month=`echo $n | cut -c4-5`
year=`echo $n | cut -c7-10`

#echo "$date"

year_present=$(date '+%Y')
month_present=$(date '+%m')
date_present=$(date '+%d')

age_years=$(($year_present-$year))
age_months=$(($month_present-$month))
age_days=$(($date_present-$date))

if [ $age_months -lt 0 ] ; then
   age_years=$(($age_years-1))
elif (( $age_months == 0)) && (($age_days < 0)) ; then
   age_years=$(($age_years-1))
fi

echo "${line[0]} $age_years" >| $2

 
