#!/bin/bash
# Count Nginx's log every hour one times by using AWK
# 2015.04.27 Pel

file_name="$1"
if [ ! -e "$file_name" ] ;then
  echo "File not exists!"
  exit 1
fi
begin_time=`date +%s`
echo "Count   Date        Hour"
awk '{FS=" "}{print $4}' $file_name |awk '{FS="["}{print $2}'|awk '{FS=":"}{print $1,$2}'|sort|uniq -c |sort -rn
end_time=`date +%s`
time=$[end_time - begin_time]

echo "${time}s"
