#! /bin/bash

mvn -pl com.yahoo.ycsb:mapkeeper-binding -am package -DskipTests dependency:build-classpath -DincludeScope=compile -Dmdep.outputFilterFile=true

