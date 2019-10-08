#!/bin/sh

src=$1
out=$2

# 区切り文字にスペースが含まれないようにする
IFS_BACKUP=$IFS
IFS=$'\n'

for srcfile in `\find $1 -maxdepth 1 -type f`;do
	rawfilename=`basename $srcfile .m4a`
	rawfilepath="./.tmp/"$rawfilename".wav"
	echo $rawfilepath
	afconvert -f WAVE -d LEI24 $srcfile $rawfilepath
	outfilepath=$out"/"$rawfilename".wav"
	echo $outfilepath
	sox $rawfilepath -b 16 $outfilepath channels 1 rate 16k
done
IFS=$IFS_BACKUP
