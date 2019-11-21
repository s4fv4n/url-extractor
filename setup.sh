#!/bin/bash

echo "Starting..."
echo " "
echo "Downloading LinkFinder..."
git clone https://github.com/GerbenJavado/LinkFinder.git  /opt/LinkFinder
echo " "
echo " Installing LinkFinder..."
cd /opt/LinkFinder
python setup.py install
echo " "
echo "Setting-up relative-url-extractor..."
echo " "
git clone https://github.com/jobertabma/relative-url-extractor.git /opt/relative-url-extractor

