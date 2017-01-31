#!/bin/bash

for i in 2016_{01..12}_{1..31}
do
    wget https://dl.dropboxusercontent.com/u/79920565/"$i"_main/"$i"_main_{1..16}.pdf
    pdfunite "$i"_main_{1..16}.pdf  "$i".pdf
    rm -f "$i"_main*.pdf
done
