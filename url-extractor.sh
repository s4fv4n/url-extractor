#!/bin/bash

while read lnk ; do 
	ruby /opt/relative-url-extractor/extract.rb $lnk
	python /opt/LinkFinder/linkfinder.py -i $lnk -o cli

done < $1 > new_urls.txt


