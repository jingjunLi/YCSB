#! /bin/bash
operationnums=1000000
recordnums=1000000000
trace_path=/home/li/leveldb_test/write_data/ycsb/ycsb_1M
#load
bin/ycsb_0.12.0 load basic -P workloads/workloada -p recordcount=$recordnums -p basicdb.verbose=false -p basicdb.trace=true -threads 10 -p ycsb_trace_path=$trace_path/ycsb_load 

# workloada
bin/ycsb_0.12.0 run basic -P workloads/workloada -p operationcount=$operationnums -p recordcount=$recordnums -p basicdb.verbose=false -p basicdb.trace=true -threads 10 -p ycsb_trace_path=$trace_path/ycsb_a 

# workloadb
bin/ycsb_0.12.0 run basic -P workloads/workloadb -p operationcount=$operationnums -p recordcount=$recordnums -p basicdb.verbose=false -p basicdb.trace=true -threads 10 -p ycsb_trace_path=$trace_path/ycsb_b

# workloadc
bin/ycsb_0.12.0 run basic -P workloads/workloadc -p operationcount=$operationnums -p recordcount=$recordnums -p basicdb.verbose=false -p basicdb.trace=true -threads 10 -p ycsb_trace_path=$trace_path/ycsb_c

# workloadd
bin/ycsb_0.12.0 run basic -P workloads/workloadd -p operationcount=$operationnums -p recordcount=$recordnums -p basicdb.verbose=false -p basicdb.trace=true -threads 10 -p ycsb_trace_path=$trace_path/ycsb_d

# workloade
bin/ycsb_0.12.0 run basic -P workloads/workloade -p operationcount=$operationnums -p recordcount=$recordnums -p basicdb.verbose=false -p basicdb.trace=true -threads 10 -p ycsb_trace_path=$trace_path/ycsb_e

# workloadf
bin/ycsb_0.12.0 run basic -P workloads/workloadf -p operationcount=$operationnums -p recordcount=$recordnums -p basicdb.verbose=false -p basicdb.trace=true -threads 10 -p ycsb_trace_path=$trace_path/ycsb_f

