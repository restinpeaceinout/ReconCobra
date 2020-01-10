#!/bin/bash
mkdir js_linkfinder
mkdir results
cd js_linkfinder
read -p "[ + ] Enter victim url: " victim
echo "$victim"
python3 js_linkfinder.py --wait=2 --download $victim
cp *.js /results
echo "[ + ] Saved in /results folder"
cd ..
