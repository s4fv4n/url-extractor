#!/bin/bash

if [ -z "$1" ]
  then
    echo "No file specified"
    echo "Usage : ./url-extractor.sh filename"
    exit 1
else
	while read lnk ; do 
		ruby /opt/relative-url-extractor/extract.rb $lnk
		python /opt/LinkFinder/linkfinder.py -i $lnk -o cli

	done < $1 > new_urls.txt
fi

