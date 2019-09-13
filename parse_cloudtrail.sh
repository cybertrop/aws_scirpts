#!/bin/bash
# This script parses an unziped QRadar CSV file for CLoudTrail API calls, their assocaited AWS accounts
# and the time the API Calls occurred. Please keep in mind this is parsed from the actual CloudTrail Payload. 
# Please make sure to include the Payload field in your QRadar query.

 

cat <filename>  # This is going to be the file you download
| tr [:upper:] [:lower:]
| grep -Eo "leef.{75}|creationdate=.{19}|accountid=.{12}"
| cut -d '|' -f 5
| sed 's/creationdate=//g'
| uniq
#| grep -i "<EventName>" # This is going to be the Event Name that you are searching for  .. feel free to remove this line to see all events
