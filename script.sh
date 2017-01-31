#!/bin/bash
echo
echo
 
echo "======================================="
echo "-----welcome to eenadu downloader----- "
echo "======================================="
echo
echo "please give the date to download"
read d
for i in 2016_08_$d
do
    wget https://dl.dropboxusercontent.com/u/79920565/"$i"_main/"$i"_main_{1..16}.pdf
    pdfunite "$i"_main_{1..16}.pdf  "$i".pdf
    rm -f "$i"_main*.pdf
done
