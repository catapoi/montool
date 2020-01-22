###########################################################
#!/bin/bash                                               #
# set -x                                                  #
# Backup script for EM, postregs conf and server footprint#
# Version 1.0                                             #
# Bucharest,September 2019 C.P.                           #
###########################################################
set -x
start=`date +%s`
exec 2>/dev/null
mkdir ~/backup/
cp ~/ctm_em/pgsql/data/postgresql.conf ~/backup
infofile=~/backup/infos
date_today=$(date +%F)
host=$(hostname)
backupfile="$host"_"$date_today"
mem=$(grep MemTotal /proc/meminfo | awk '{print $2}')
meminMB=$(($mem/1024))
procno=$(grep -c ^processor /proc/cpuinfo)
disksize=$(du -s --block-size=G $HOME | cut -f1)
emversion=$(cat ~/installed-versions.txt | grep EM)
diskusage=$(df -k . | grep /ctm_em | awk '{print $5}')
diskusa="${diskusage%?}"
echo Parameteres of Enterprise Manager > ~/backup/infos
echo ================================= >> ~/backup/infos
echo Host $host >> ~/backup/infos
echo Total Memory $meminMB Mb >> ~/backup/infos
echo Number of processors $procno >> ~/backup/infos
echo Date $date_today >> ~/backup/infos
echo Backupfile $backupfile >> ~/backup/infos
echo Disk used $disksize >> ~/backup/infos
echo EM version $emversion >> ~/backup/infos
if [ $diskusa -gt 80 ];then
        echo  "Em backup failed disk usage more then 80%" >> ~/backup/infos
        mail -a ~/backup/infos -s "Backup failed" iat@metrosystems.net < /dev/null
elif [ -d "/ctm/ctmbackup" ];then
        sh em util -mcs -type all -export -file  ~/backup/$backupfile
        tar -zcvf ~/backup/"$backupfile".tar.gz ~/backup/
        cp ~/backup/"$backupfile".tar.gz /ctm/ctmbackup/
        end=`date +%s`
        runtime=$((end-start))
        mytime=$(($runtime/60))
        echo Backup done in $mytime min >>  ~/backup/infos
        cp ~/backup/"$backupfile".tar.gz /ctm/ctmbackup/
        mail -a ~/backup/infos -s "EM config" iat@metrosystems.net < /dev/null
else
        echo Backup failed - NFS /ctm/ctmbackup not found! >> ~/backup/infos
        mail -a ~/backup/infos -s "Backup failed" iat@metrosystems.net < /dev/null
fi
rm -rf ~/backup/
