##		        Bash script to download bulk jpg and rename ifself		        ##
##				                - Tarun Ghuge -                                	##
##################################################################################

#!/bin/bash

xyz="clear -x"
$xyz

OLDIFS=$IFS
IFS=","
while read f1
do
    pqr="_1"
    abc=$f1$pqr
    echo $(tput setaf 1)$abc
    curl --max-time 2  https://voot-content.s3.amazonaws.com/PFT/images/$abc.jpg  -H 'Connection: keep-alive'   -H 'Cache-Control: max-age=0'   -H 'DNT: 1'   -H 'Upgrade-Insecure-Requests: 1'   -H 'User-Agent: Mozilla/5.0 (Linux; Android 6.0.1; Moto G (4)) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/81.0.4044.113 Mobile Safari/537.36'   -H 'Accept: text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,image/apng,*/*;q=0.8,application/signed-exchange;v=b3;q=0.9'   -H 'Sec-Fetch-Site: none'   -H 'Sec-Fetch-Mode: navigate'   -H 'Sec-Fetch-User: ?1'     -H 'Accept-Language: en-US,en;q=0.9'  --compressed --output ./$abc.jpg  | ack --passthru 'timed out'
    highlight green "timed out"
    echo
    echo
    echo -------------------------  $?
done < link.csv



#################################################################################
##
##	read.me -
##
##	Create and locate the 'link.csv' and 'script' in same folder before run
##
#################################################################################
