#!/bin/sh
sh getAllStreams.sh
sh getAllFrames.sh
sh cropStillsToCharTiles.sh
sh partitionMonthData.sh
python keras_warp.py Months
dockerPrep.sh
