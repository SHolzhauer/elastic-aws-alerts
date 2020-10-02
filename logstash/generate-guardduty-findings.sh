##!/usr/bin/env bash

detid=$1
# Get all alerts in the past 5 minutes
dt=$(expr $(($(date +%s%N)/1000000)) - 310000)

echo "["
for i in $(aws guardduty list-findings --finding-criteria "{\"Criterion\":{\"updatedAt\":{\"Gte\":${dt}}}}" --detector-id ${detid} --region eu-west-1 | jq ".FindingIds[]"); do
  echo $(aws guardduty get-findings --detector-id ${detid} --finding-ids $(echo $i | sed 's/"//g') --region eu-west-1)
  echo ","
done
echo "{}]"
