#!/bin/sh

src=$1
out=$2

# 区切り文字にスペースが含まれないようにする
IFS_BACKUP=$IFS
IFS=$'\n'

for srcfile in `\find $1 -maxdepth 1 -type f`;do
	outfilename=`basename $srcfile .m4a`
	outfilepath=$out"/"$outfilename".wav"
	echo $outfilepath
	afconvert -f WAVE -d LEI16 $srcfile $outfilepath
done
IFS=$IFS_BACKUP
