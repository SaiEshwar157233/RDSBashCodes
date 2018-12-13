#!/bin/bash
inc=4;

for st in {1..27..5}
do
	ed=$((st+inc));
	aws cloudwatch get-metric-statistics --metric-name CPUUtilization --start-time 2018-11-${st}T00:00:00Z --end-time 2018-11-${ed}T23:59:59Z --period 300 --namespace AWS/RDS --statistics Maximum --dimensions Name=DBInstanceIdentifier,Value=dclstxprddb01  
done
