#!/bin/bash

CUR_DIR=$(cd $(dirname $0); pwd 2>/dev/null)

#compile the java files
javac ${CUR_DIR}/../src/*.java
#create jar files
jar -cfve app.jar Main ${CUR_DIR}/../src/*.class

tag=`date +%s%3N`
docker build -t olehsmicroservice:${tag} .
