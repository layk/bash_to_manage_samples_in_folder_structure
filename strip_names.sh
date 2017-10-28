#!/bin/bash
#FILES=/path/to/*
cd to_card;

for D in *;
do
  if [ -d "${D}" ] ; then
    cd $D
    for dd in *;
    do
      cd "$dd";
      	echo $D;
	  for space in *; 
      do
        if [[ "$space" == *" "* ]]; then
            mv  "$space" "${space// /}";
        fi
      done
      for score in *; 
      do
        if [[ "$score" == *"-"* ]]; then
          mv  "$score" "${score//-/}";
        fi
      done
      for underscore in *; 
      do
        if [[ "$underscore" == *"_"* ]]; then
         mv  "$underscore" "${underscore//_/}";
        fi
      done      
      if [[ "$D" == "DX7" ]]; then
      for prefix1 in *; 
      do
      if [[ "$prefix1" == *"DX7"* ]]; then
        mv "$prefix1" "${prefix1##*DX7}";
      fi
      done
      for middle1 in *; 
      do
        if [[ "$middle1" == *"000"* ]]; then
          mv "$middle1" "${middle1//000/}";
        fi
      done 
      fi

      if [[ "$D" == "mrad" ]]; then
      for prefix2 in *; 
      do
        if [[ "$prefix2" == *"CYCdh"* ]]; then
          mv "$prefix2" "${prefix2##*CYCdh}";
        fi
      done
      fi
      
      
      
	#n=${ft##*_};
	#if [[ "$ft" == "$n" ]]; then 
	#echo "a";
	#mv "$ft" "${ft##*_}";
	#fi
       
      cd ..			
    done
  cd ..
  fi
done

