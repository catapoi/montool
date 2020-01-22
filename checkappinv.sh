#!/bin/bash
datacenter=$(cat ~/metro/data/inventory.dat | grep -e DATACENTER | cut -f2 -d "=")
application=$(cat ~/metro/data/inventory.dat | grep -e APPLICATION | cut -f2 -d "=")
echo "<<<local>>>" > /opt/omdagent/var/check_mk/spool/inventory
echo 0 CTM_Inventory_${datacenter}_${application} - OK >> /opt/omdagent/var/check_mk/spool/inventory
chmod 644 /opt/omdagent/var/check_mk/spool/inventory
