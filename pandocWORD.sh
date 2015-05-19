#!/bin/sh
outfile=${1%.*}
dropbox=/Users/smcphee/Dropbox
pandoc -f markdown -t docx --smart --standalone --bibliography=${dropbox}/ANCH/PHD/THESIS/99-Bibliography/library_clean.bib --csl=${dropbox}/Libraries/pandoc/classics-standard-for-uq-rhd-theses.csl --output=${outfile}.docx ${1}

