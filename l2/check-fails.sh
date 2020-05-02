#!/usr/bin/env bash
counter=0

while (source $PWD/sometimes-fails.sh >> $PWD/output.txt 2>> $PWD/error.txt)
do
  counter=$(( counter + 1 ))
done

echo "Program failed after $counter runs."
