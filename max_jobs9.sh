#!/bin/bash

if [ $# == 0 ]
then
        echo "Wrong number of parameters for ${0}"
        echo "Syntax:"
        echo "${0} <init date yyyymmdd> <nb of days>"
        echo "${0} <nb of days>"
        echo "Script ended with failure ..."
        exit 1
fi

if [ $# == 2 ]
then
        data_ini=$1
        days=$2
elif [ $# == 1 ]
then
        data_ini=$(date +'%Y%m%d')
        days=$1
elif [ $# > 2 ]
then
        echo "Wrong number of parameters for ${0}"
        echo "Syntax:"
        echo "${0} <init date yyyymmdd> <nb of days>"
        echo "${0} <nb of days>"
        echo "Script ended with failure ..."
        exit 1
fi

#data_ini=$(date +'%Y%m%d')
#echo $data_ini
export PGPASSWORD='dien19bien54phu'

data=`em psql -X -A -d emdb -U emuser -h localhost -t -c "select ID from DATE_INDEX where fulldate like '$data_ini'"`
#echo $data
max_jobs=`em psql -X -A -d emdb -U emuser -h localhost -t -c "select max(nr_job) from (select SUM(JOBS) as nr_job from NET_REPORT where NET_DATE_IDX<$data and  NET_DATE_IDX>($data - $days) GROUP BY NET_DATE_IDX) as maxim"`
datacenter=`em psql -X -A emdb -U emuser -h localhost -t -c "select data_center from comm LIMIT 1"`
#psql em800 emuser << EOF
#       select max(nr_job) from (select SUM(JOBS) as nr_job from NET_REPORT where NET_DATE_IDX<$data and NET_DATE_IDX>($data - $days) GROUP BY NET_DATE_IDX) as m$
#EOF
echo $max_jobs $HOSTNAME $datacenter
