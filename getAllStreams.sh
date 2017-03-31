#!/bin/bash

mkdir videos
cd videos
for i in {2007..2011}; do    
    for j in `seq -w 1 12`; do 
        echo $j " " $i; 
        wget https://ssl.eas.ualberta.ca/sitecore/skyline_archive/cs_${i}-${j}.mp4
    done
done
