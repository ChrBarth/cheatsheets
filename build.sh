#!/bin/bash

# create .html files in html-directory from all .md files in current directory
# and .pdf files in pdf-directory
for mdfile in *.md
do
pandoc -o html/${mdfile%.md}.html $mdfile
pandoc -o pdf/${mdfile%.md}.pdf $mdfile
# http://www.tldp.org/LDP/abs/html/string-manipulation.html
done

