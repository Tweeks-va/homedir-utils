#!/bin/bash

# This script takes in one or more private ssh key file names and generates a
# QR code of the private key, with the username (name of the file) at the top.
# It expects to be fed one or more priave key files ending in .priv
#
# EXAMPLE USAGE: 
#		qrify-privatekeys.sh user1.priv [user2.priv ...]
#		qrify-privatekeys.sh $(ls -1 *.priv | tr "\n" " ")
#
# REQUIRES: imagemagick (convert), qrencode
#	    qrify-privatekeys.sh should be in your path, such as ~/bin/
#
# (CC)4.0 BY-NC-SA 2025 Thomas Weeks, tweeks-homework@theweeks.org
#

export QR="$(which qrencode)"
export CONV="$(which convert)"
export ME="$(which qrify-privatekeys.sh)"

#echo QR=$QR
#echo CONV=$CONV
#echo ME=$ME
#echo Script = $0

if [ "$QR" == "" ] || [ "$CONV" == "" ] || [ "$ME" == "" ] ; then
	echo
	echo ERROR: Requirements NOT installed.. exiting
	echo
	head -14 $ME | tail -12
	sleep 3
	exit 1 
else
	echo
	#echo "Reqs INSTALLED..."
	#sleep 3
	#exit 0
fi

## Baked in usage/documentation
if [[ "$1" = "" ]]; then 
	echo "ERROR: Usage syntax error (must provide private key file name(s)..."
	echo
	head -14 $0 | tail -12
fi

## xargs Usage:
#xargs -I {} qrencode \-r {} -o {}.png

## Iterate through .priv private key files...
for i in $@; do
	DIR="$(dirname $i)"
	if [ -e $DIR/temp.png ]; then
		rm $DIR/temp.png
	fi
	export x=$(basename $(echo -n $i) .priv)
	echo Username=$x
	## Generate QR Code File
	echo $x | xargs -I {} qrencode \-r $DIR/{}.priv -o $DIR/temp.png
	echo $x | xargs -I {} convert -draw "text 0,10 'Username: {}    Private Key:'" $DIR/temp.png $DIR/{}.priv.png
	if [ -e $DIR/temp.png ] ; then
		/bin/rm $DIR/temp.png
	fi
done

