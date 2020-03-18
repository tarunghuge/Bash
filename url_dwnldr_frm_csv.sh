#!/bin/bash

OLDIFS=$IFS
IFS=","
while read f1 f2
do
    clear -x

    curl -v $f1 --output ~/data/$f2.jpg
    
    echo ------------
done < dwnldr.csv


#http://shortyou.com/971Qxf
