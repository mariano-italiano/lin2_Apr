#!/bin/bash 
# Lab 1

echo "Tworzenie katalogu backup"
mkdir ~/backup 2> copy.err

echo "Kopiowanie plików z /usr/bin"
cp -rp /usr/bin/* ~/backup > copy.log 2>&1
