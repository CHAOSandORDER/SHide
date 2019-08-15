#!/bin/bash

clear
sudo apt install steghide
clear
echo " 
 

 SSSSS   HH   HH  iii       dd        
 SS      HH   HH            dd     
 SSSSS   HHHHHHH  iii   dddddd   eeeee
     SS  HH   HH  iii   dd  dd   eeeee  
 SSSSS   HH   HH  iii   dddddd   eeeee 
                                   
             by AVIshek 

             "


echo "          "
echo " SUPPORTED FILES TYPES FOR embeding .py .sh .txt"
echo " SUPPORTED FILES TYPES FOR embeding into .bmp .jpeg .wav .au"
echo " (1) EMBED "
echo " (2) EXTRACT "
echo -n " Enter Selection (1 or 2):"
read i

if [ $i -eq 1 ]

then
	
	read -p "Enter file to hide :" sf
	read -p "Enter file to hide within :" hf
	steghide embed -ef $sf -cf $hf -Z

fi

if [ $i -eq 2 ]

then
	
	read -p "Enter file to extract from :" sf
	read -p "Enter output file :" of
	steghide extract -sf $sf -xf $of

fi


