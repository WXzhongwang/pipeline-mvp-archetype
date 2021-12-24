#!/bin/bash

source /home/admin/setenv.sh

cd $(dirname $0)

exec java -XX:+PrintGC -XX:+PrintGCTimeStamps -Xloggc:/home/admin/logs/gc.log -XX:+UseParallelOldGC \
  -Xms1500m -Xmx1500m -Xmn1024m -XX:+HeapDumpOnOutOfMemoryError -XX:HeapDumpPath=/home/admin/logs/heap.dump \
  -Dcom.sun.management.jmxremote.port=8092 -Dcom.sun.management.jmxremote.ssl=false -Dcom.sun.management.jmxremote.authenticate=false \
  -cp "../jars/*" -Dlogging.config="file:../conf/logback.xml" com.rany.ops.framework.App \
  -c ../conf/${artifactId}.json -h ../conf/resource.json >stderr.out 2>&1
