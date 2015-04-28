#!/bin/bash

begin_time=`date +%s`

for ((i=0;i<400;i++))
do
  cat access.log >> temp.log
done

end_time=`date +%s`
time=$[end_time-begin_time]
echo "${time}s"
