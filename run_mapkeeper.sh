#! /bin/bash
# default 
#bin/ycsb_0.12.0 load  mapkeeper -P workloads/workloada -p recordcount=$1 -p measurementtype=timeseries -p timeseries.granularity=2000  -threads $2  -s > $3
# key 16 value 100 seq 
#bin/ycsb_0.12.0 load  mapkeeper -P workloads/workloada -p recordcount=$1 -p measurementtype=timeseries -p timeseries.granularity=2000 -p fieldcount=1 -p fieldlength=92 -p insertorder=ordered -p zeropadding=16 -threads $2  -s > $3
# key 16 value 100 random
bin/ycsb_0.12.0 load  mapkeeper -P workloads/workloada -p recordcount=$1 -p measurementtype=timeseries -p timeseries.granularity=2000 -p fieldcount=1 -p fieldlength=92 -p insertorder=hashed -p zeropadding=16 -threads $2 -s > $3
#bin/ycsb_0.12.0 load  mapkeeper -P workloads/workloada -p recordcount=100000000 -s > test.dat
