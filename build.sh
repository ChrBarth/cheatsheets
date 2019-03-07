#!/bin/bash

# create .html files in html-directory from all .md files in current directory
# and .pdf files in pdf-directory
for mdfile in *.md
do
echo "Converting $mdfile..."
pandoc -o html/${mdfile%.md}.html $mdfile
pandoc --latex-engine=xelatex -o pdf/${mdfile%.md}.pdf $mdfile
# http://www.tldp.org/LDP/abs/html/string-manipulation.html
# xelatex is needed so pandoc can compile the unicode-cheatsheet
# (although most characters are missing anyway...)
done

