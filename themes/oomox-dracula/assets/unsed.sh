#!/bin/sh
sed -i \
         -e 's/rgb(0%,0%,0%)/#282936/g' \
         -e 's/rgb(100%,100%,100%)/#f8f8f2/g' \
    -e 's/rgb(50%,0%,0%)/#282a36/g' \
     -e 's/rgb(0%,50%,0%)/#8be9fd/g' \
 -e 's/rgb(0%,50.196078%,0%)/#8be9fd/g' \
     -e 's/rgb(50%,0%,50%)/#44475a/g' \
 -e 's/rgb(50.196078%,0%,50.196078%)/#44475a/g' \
     -e 's/rgb(0%,0%,50%)/#f8f8f2/g' \
	$@
