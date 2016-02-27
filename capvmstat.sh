#!/bin/ksh
cur_date=`date '+%a-%d%b%Y_%H%M'`
log_file=vmstat_`hostname`_${cur_date}.log
date > ${log_file}
nohup vmstat -n 2 2000 | awk '{system("/bin/echo -n `date`");print ": " $0}' >> ${log_file} &

