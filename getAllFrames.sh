#!/bin/bash

mkdir stills
for i in {2007..2011}; do   
    mkdir stills/${i}
    for j in `seq -w 1 12`; do 
        mkdir stills/${i}/${j}
    done
done

for i in {2007..2011}; do    
    for j in `seq -w 1 12`; do 
        ffmpeg -i videos/cs_${i}-${j}.mp4 -r 6 -f image2 stills/${i}/${j}/image-%07d.png
    done
done
