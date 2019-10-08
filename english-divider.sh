#!/bin/sh

src=$1
out=$2

# 区切り文字にスペースが含まれないようにする
IFS_BACKUP=$IFS
IFS=$'\n'

for srcfile in `\find $1 -maxdepth 1 -type f`;do
	outfilename=`basename $srcfile .wav`
	echo $out"/"$outfilename
	echo $srcfile | adintool -in file -out file -filename $out"/"$outfilename
done
IFS=$IFS_BACKUP
