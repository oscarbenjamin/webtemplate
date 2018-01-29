#!/usr/bin/env bash

# Source and output folders
SRC=src
OUT=docs

# Pages to build
PAGES=$SRC/*.md

# Names of css and template files
TITLE="This is the title"
CSSFILE=style.css
TEMPLATE=$SRC/template.html

for mdfile in $PAGES; do
  echo Compiling $mdfile

  pagename=$(basename "${mdfile%.*}")
  htmlfile=$OUT/$pagename.html

  echo to... $htmlfile

  # Pandoc command:
  pandoc\
     --toc\
     --variable css:"$CSSFILE"\
     --template "$TEMPLATE"\
     --title "$TITLE"\
     --variable title:"$TITLE"\
     --mathjax\
     --output="$htmlfile" "$mdfile"\
     #

done
