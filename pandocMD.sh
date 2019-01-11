#!/bin/sh
filename=$(basename $1)
outfile=${filename%.*}_final.md
currentdir=$(pwd)
id_prefix=fn${filename%-*}_

echo "DESTINATION IS $currentdir/$outfile with footnote prefix '$id_prefix'"

/usr/local/bin/pandoc --atx-headers  --standalone --reference-location=block --from=markdown+smart --to=markdown+smart --id-prefix=$id_prefix --wrap=none --output=$outfile $1
