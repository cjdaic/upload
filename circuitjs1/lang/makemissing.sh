#!/bin/sh
for i in da de es fr it nb pl pt ru zh zh-tw
do
  python findmissing.py ../src/com/lushprojects/circuitjs1/public/locale_$i.txt > missing_$i.txt
done
