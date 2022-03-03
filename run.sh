#!/bin/bash

tracks=($(jq -r '.track' config.json  | tr -d '[]," '))

NCORE=4
mkdir -p track

tckedit ${tracks[*]} track/track.tck -force -nthreads $NCORE -quiet

[ ! -f ./track/track.tck ] && echo "failed" && exit 1 || echo "complete" && exit 0
