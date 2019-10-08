#!/bin/bash

src_dir=$1
out_dir=$2

for file in `\find $1 -maxdepth 1 -type f`;do
	echo $file
done

