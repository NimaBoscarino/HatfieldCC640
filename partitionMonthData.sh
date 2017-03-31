#!/bin/bash

mkdir ../data
mkdir ../data/Months

cd dirty_month_tiles

for month in `ls`; do
    mkdir ../../data/Months/$month

    cd $month
    echo $month

    for file in $(ls -p | grep -v / | head -150)
    do
        convert $file ../../../data/Months/$month/${file%.*}.jpg
    done

    cd ..
done
