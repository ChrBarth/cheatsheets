#!/bin/bash

# create .html files in html-directory from all .md files in current directory
# and .pdf files in pdf-directory
for mdfile in *.md
do
echo "Converting $mdfile..."
pandoc -H ~/Dokumente/vorlagen/default_css.html --metadata pagetitle="${mdfile%.md}" -o html/${mdfile%.md}.html $mdfile
pandoc --pdf-engine=pdflatex -o pdf/${mdfile%.md}.pdf $mdfile
# http://www.tldp.org/LDP/abs/html/string-manipulation.html
# xelatex is needed so pandoc can compile the unicode-cheatsheet
# (although most characters are missing anyway...)
done

