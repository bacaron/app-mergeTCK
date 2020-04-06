#!/bin/bash

track1=`jq -r '.track1' config.json`
track2=`jq -r '.track2' config.json`
NCORE=4
mkdir -p track

tckedit ${track1} ${track2} track/track.tck -force -nthreads $NCORE -quiet

[ ! -f ./track/track.tck ] && echo "failed" && exit 1 || echo "complete" && exit 0

