#!/bin/bash

mkdir danielTiles 

for year in {2007..2011}; do
    mkdir danielTiles/$year
    for month in `ls stills/$year`; do
        mkdir danielTiles/$year/$month
        for frame in `ls stills/$year/$month`; do
            val=0
            mkdir danielTiles/$year/$month/${frame%.*}
            for i in {1..40}; do
                convert stills/$year/$month/$frame -crop 10x15+${val}+299 danielTiles/$year/$month/${frame%.*}/$i.png
                val=$(($val+10))
            done
        done
    done
done



