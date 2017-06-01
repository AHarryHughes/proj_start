#!/bin/bash

day_start(){
_CUR_DIR=$(pwd)
echo $_CUR_DIR

cd ~/downloads
_MR_FILE=$(ls -Art | tail -n 1)
echo $_MR_FILE
cd $_CUR_DIR

IFS=' ' read -a myarray <<<< $_MR_FILE
VAR_count=0
VAR_spaceSlash="\\ "
while [${myarray[@] -lt VAR_count]
do
	if [VAR_count -eq 0]
	then
		_MR_FILE=${myarray[0]}$VAR_spaceSlash
	fi
	if [VAR_count -eq ${myarray[@]}-1]
	then
		_MR_FILE=$_MR_FILE${myarray[$VAR_count]}
	fi
	MR_FILE=$MR_FILE${myarray[$VAR_count]}$VAR_spaceSlash
done

mv ~/Downloads/$_MR_FILE .
unzip $_MR_FILE
rm $_MR_FILE
open $find *.html
atom .
}
day_start
