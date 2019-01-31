#!/bin/sh
filename=$(basename $1)
outfile=${filename%.*}
currentdir=$(pwd)
echo "PDF DESTINATION IS $currentdir/$outfile.PDF"
dropbox=/Users/smcphee/Dropbox
/usr/local/bin/pandoc -f markdown+smart -t latex -V geometry:margin=4cm -V fontsize=10pt -V papersize=a4paper -V documentclass=memoir -V classoption=oneside -V classoption=article -V mainfont='Times New Roman' -V frenchspacing -V onehalfspacing -V biblio-title='Works Cited' -V noparindent=true --standalone --pdf-engine=xelatex --bibliography=${dropbox}/ANCH/PHD/THESIS/99-Bibliography/library_clean.bib --csl=${dropbox}/Libraries/pandoc/classics-standard-for-uq-rhd-theses.csl --output=${outfile}.PDF ${1} 
