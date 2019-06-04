#!/bin/sh

chmod u+x 5xx.sh
rm abc.log abc.gz -f

#URL address
URL=$1 

# donwload 
wget -c "$URL"  -O abc.gz

#unzip
gunzip -c  abc.gz  > abc.log

#analyze
awk '{print $9}' abc.log |sort |uniq -c|sort -nr
