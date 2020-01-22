#!/bin/bash
echo "<<<local>>>" > /opt/omdagent/var/check_mk/spool/120checkaginv
ctm_agstat -LIST "*" > /tmp/agstatout 2>&1
ctm_agstat -LIST "*" | grep -e Agent | while read line; do
agent=$(echo $line | cut -f2 -d " " )
status=$(echo $line | cut -f4 -d " ")
if [ $status == "Available" ]; then
state=0
elif [ $status == "Discovering" ]; then
state=1
else
state=2
fi
echo $state CTM_AGENT_$agent - "Agent status is: " $status >> /opt/omdagent/var/check_mk/spool/120checkaginv
done
chmod 644 /opt/omdagent/var/check_mk/spool/120checkaginv

