#!/bin/sh
filename=$(basename $1)
outfile=${filename%.*}
currentdir=$(pwd)
echo "PDF DESTINATION IS $currentdir/$outfile.PDF"
dropbox=/Users/smcphee/Dropbox
/usr/local/bin/pandoc -f markdown -t latex -V geometry:margin=3cm -V fontsize=10pt -V papersize=a4paper -V documentclass=memoir -V classoption=oneside -V classoption=article -V mainfont='Times New Roman' --smart --standalone --latex-engine=xelatex --bibliography=${dropbox}/ANCH/PHD/THESIS/99-Bibliography/library_clean.bib --csl=${dropbox}/Libraries/pandoc/classics-standard-for-uq-rhd-theses.csl --output=${outfile}.PDF ${1}
