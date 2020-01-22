#!/bin/bash
# set -x
echo "<<<local>>>"
cat /tmp/tablesize | while read line; do
table=`echo $line | cut -f1 -d "|"`
size=`echo $line | cut -f2 -d "|"`
actsize=`echo $size | cut -f1 -d " "`
isgb=`echo $line | cut -f2 -d "|" | grep -o ..$`
if [ $isgb == 'GB' ]; then
if [ $actsize -lt 50 ]; then
status=0
else
status=2
echo $status Table_$table - "The size of table is: " $size
fi
fi
done

