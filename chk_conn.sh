#!/bin/bash
# set -x
echo "<<<local>>>"
cons=$(cat /tmp/noofconns)
# echo $cons
if [[ $cons -lt 1000 ]]; then
status=0
echo $status "PostgreSql_server" - "Active connections" $cons
else
status=2
echo $status "PostgreSql_server" - "Active connections" $cons
fi

