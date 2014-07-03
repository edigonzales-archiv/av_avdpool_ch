#!/bin/bash

# Import des Bundesmodelles
#export JAVA_HOME=/usr/lib/jvm/java-7-oracle/
export JAVA_HOME=/usr/lib/jvm/java-7-openjdk-amd64/
echo "Java Home is $JAVA_HOME"

export CLASSPATH=:/home/stefan/Apps/av_avdpool_ch/itf2avdpool.jar:$CLASSPATH
echo "CLASSPATH is $CLASSPATH"

$JAVA_HOME/bin/java -Xms128m -Xmx2048m org.catais.avdpool.App /home/stefan/Apps/av_avdpool_ch/itf2avdpool.properties


# Erstellen des MOpublic (LV03 und LV95 in anderer DB)
#/home/stefan/Apps/geokettle-2.5/kitchen.sh -file=/home/stefan/Projekte/av_avdpool_ch/mopublic/kettle/master_update_mopublic.kjb >> /home/avdpool/mopublic.log


