#!/bin/bash
#FILES=/path/to/*

rm -rf to_card
mkdir -p to_card

echo "1"
#rename "CYCdh_K1" "" mono/*
echo "2"

for D in *; do
    if [ -d "${D}" ]; then
	if [ ${D} == "to_card" ]; then
		continue
	else
        echo "Entering dir ${D}"   # your processing here
	mkdir to_card/$D
	cd $D
	for dd in *;
	do
	  echo "Entering subdir ${D}/${dd}"
	  mkdir "../to_card/${D}/${dd}"
	  cd "$dd"
		for fff in *.wav 
		do
		  echo "Processing $fff file..."
		  #sox $f -r 44100 -b 16 -c 1 mono/$f  
		#echo "filee $ff"
		 # $fdsa = ../to_card/${D}/$dd/$ff
		#echo $fdsa
			sox "$fff" -r 44100 -b 16 -c 1 "../../to_card/${D}/${dd}/${fff}"
		  # take action on each file. $f store current file name
		 # cat $f

		done
	    		
	  cd ..
	done
	cd ..
	fi
    fi
done

sh ./strip_names.sh
