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
	
	echo -n " 1 for DEFAULT SETTINGS and 2 for CUSTOM :"
	read d

	if [ $d -eq 1 ]

	then

		read -p "Enter file to hide :" sf
		read -p "Enter file to hide within :" hf
		steghide embed -ef $sf -cf $hf -Z

	fi

	if [ $d -eq 2 ]

	then

		echo "Do you want to compress before embeding data?"
		echo -n " Press 1 to COMPRESS and 2 for NO COMPRESSION : "
		read c 
		
		if [ $c -eq 1 ]

		then

			read -p "Enter file to hide :" sf
			read -p "Enter file to hide within :" hf
			read -p "Enter compression level 1-9. Where 1->best speed 9->best compression" cl
			read -p "Enter a passphrase (whitespaces are accepted :" pp 

			steghide embed -ef $sf -cf $hf --compress $cl -Z -p "$pp"

		fi

		if [ $c -eq 2 ]

		then

			read -p "Enter file to hide :" sf
			read -p "Enter file to hide within :" hf
			read -p "Enter a passphrase (whitespaces are accepted :" pp
			steghide embed -ef $sf -cf $hf -Z -p "$pp"

		fi



	fi

fi

if [ $i -eq 2 ]

then
	
	read -p "Enter file to extract from :" sf
	read -p "Enter output file :" of
	steghide extract -sf $sf -xf $of

fi


