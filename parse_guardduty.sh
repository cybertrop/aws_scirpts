 #!/bin/bash
# This script is intended to help an operator quickly carve out all of the types of GuardDuty alerts in a large data set.

cat <filename> 
| sed -E 's/"|{|}|,|]//g' 
| sort 
| uniq
| grep -E "type:"
#| wc -l  <--- optional word count per line
