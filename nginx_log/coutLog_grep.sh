#!/bin/bash
# Count Nginx's log every hour one times by using grep
# 2015.04.27 Pel

file_name="$1"
count_time="27/Apr/2015:13"

if [ ! -e "$file_name" ];then
  echo "File not exists!"
  exit 1
fi

begin_time=`date +%s`
echo "Date: ${count_time}"
echo -n "Count: "
grep $count_time $file_name |wc -l
end_time=`date +%s`
time=$[end_time - begin_time]

echo "${time}s"
