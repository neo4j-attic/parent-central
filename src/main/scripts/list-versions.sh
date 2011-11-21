##!/bin/bash

# dump metadata from jar files

for jarfile in neo4j-*.jar
do
  echo "--------------------------------------"
  echo "File: $jarfile"
  unzip -p $jarfile META-INF/MANIFEST.MF | while read line
  do
    if [[ "$line" == "Implementation-"* ]]
    then
      echo ${line:15}
    fi
  done
done

