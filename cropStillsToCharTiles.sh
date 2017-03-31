#!/bin/bash

mkdir dirty_month_tiles

for i in `seq -w 1 12`; do
    mkdir dirty_month_tiles/${i}
done

for month in `ls stills/2010`; do
    for frame in `ls stills/2010/$month`; do
        convert stills/2010/$month/$frame -crop 38x24+165+295 dirty_month_tiles/${month}/2010-${month}-${frame%.*}.png
    done
done
