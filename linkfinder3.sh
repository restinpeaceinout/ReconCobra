#!/bin/bash
cd LinkFinder
echo "[ + ] loading results"
echo "[ + ] Before using this tool"
echo "[ + ] copy all js files into LinkFinder folder"
echo ""
python3 linkfinder.py -i '*.js' -r ^/api/ -o results.html
