#!/bin/sh
filename=$(basename $1)
outfile=${filename%.*}
currentdir=$(pwd)
echo "TEX DESTINATION IS $currentdir/$outfile.tex"
dropbox=/Users/smcphee/Dropbox
/usr/local/bin/pandoc -f markdown -t latex -V geometry:margin=4cm -V fontsize=12pt -V papersize=a4paper -V documentclass=memoir -V classoption=oneside -V mainfont='Times New Roman' -V frenchspacing -V onehalfspacing -V biblio-title='Works Cited' -V numbersections -V toc -V toc-depth=0 --smart --standalone --wrap=auto --columns=72 --latex-engine=xelatex --bibliography=${dropbox}/ANCH/PHD/THESIS/99-Bibliography/library_clean.bib --csl=${dropbox}/Libraries/pandoc/classics-standard-for-uq-rhd-theses.csl --wrap=none --filter=pandoc-citeproc --filter=${dropbox}/Libraries/pandoc/tex-biblio-env.py --output=${outfile}.tex ${1}
