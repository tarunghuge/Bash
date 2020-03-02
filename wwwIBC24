#!/bin/bash
##
## script to take release of WWW IBC24
## Tarun Ghuge
######################################################

cl="clear -x"
$cl

chd="cd /data/websites/www.ibcindia.tv/public_html/"
$chd

fetch="git fetch --all"
$fetch

read -p "Enter your WWW Release type -                              \\
        1 : checkout                              		     \\
        2 : Pull        OPTION ->" xyz

case "$xyz" in

1)      read -p "Want to CHECKOUT? (yes): " n
        yes=$(echo $n | tr -s '[:upper]' '[:lower]')
        if [[  "$n" = 'yes'  ]] ; then
        echo '## NO SPACE IN BRANCH NAME & CTRL + D to EXIT'
        echo
        read -p "Copy Branch Here ->" advertbranch
        chkot="git checkout $advertbranch"
        $chkot
        else
                echo
                echo ' +++++ ReRun the Script & Please select a vaild option  +++++'
                exit
        fi ;;


2)      read -p "Want to PULL (yes): " n
        yes=$(echo $n | tr -s '[:upper:]' '[:lower:]')
        if [[ "$n" = "yes" ]] ; then
        pul="git pull"
        $pul
        else
                echo
                echo  ' +++++ ReRun the Script & Please select a vaild option  +++++'
                exit

        fi ;;

*)      echo
        echo ' +++++ ReRun the Script & Please select a vaild option  +++++'
        exit  ;;

esac


st="pm2 status"
$st

rst="pm2 restart IBC"
$rst

while true ; do
        echo
        echo SLEEP FOR 5 SEC
        sleep 5
        pm2 status
        exit
done
