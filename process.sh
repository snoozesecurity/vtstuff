#!/bin/bash

# You can use this to process the resulting out.txt file from vtapi.py
# I included this because the JSON output from VirusTotal is somewhat non-compliant
# and caused issues with jquery.  Speaking of jq, you will need to install it
# in order for this script to complete successfully.  The jq command at the end
# of this script will only output VT hits that a detection ratio of greater
# than 0 percent, which in my opinion are worthy of further investigation.

FILE=out.txt

sed -i -e "s/'/\"/g" $FILE
sed -i -e "s/False/false/g" $FILE
sed -i -e "s/True/true/g" $FILE 
sed -i -e "s/None/0/g" $FILE
sleep 1
jq "del(.scans) | select (.positives > 0) | ." < $FILE
