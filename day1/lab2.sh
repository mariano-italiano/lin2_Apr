#!/bin/bash

grep Fra lab2.txt | awk -F"," '{print $1 "," $3 "," $4}'

echo -n "Win z innych krajów jest: " ; grep -v Fra lab2.txt  | wc -l

sed '2,3s/wytrawne/półwytrawne/gI' lab2.txt

sed -i '5i\Nowe wino włoskie,Ita,czerwone wytrawne,22.00' lab2.txt
