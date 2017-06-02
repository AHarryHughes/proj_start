#!/bin/bash

day_start(){
_CUR_DIR=$(pwd)
echo $_CUR_DIR

cd ~/downloads
_MR_FILE=$(ls -Art | tail -n 1)
echo $_MR_FILE
cd $_CUR_DIR
#add if statement for a file with no spaces
VAR_loop=0
myarray=
for word in $_MR_FILE
do
	myarray[$VAR_loop]=$word
	echo ${myarray[$VAR_loop]}
	let "VAR_loop++"
	echo $VAR_loop
done
echo $VAR_loop
VAR_count=0
VAR_spaceSlash='\ '
echo $VAR_spaceSlash
_TMP=
let VAR_loop_minus=$VAR_loop-1
while [ $VAR_loop -gt $VAR_count ]
do
	echo "run while"
	echo $VAR_count
	if [ $VAR_count -eq 0 ]
	then
		_TMP=${myarray[0]}$VAR_spaceSlash
		echo $_TMP
		echo "first if"
	else [ $VAR_count -eq $VAR_loop_minus ]
	then
		_TMP=$_TMP${myarray[$VAR_count]}
		echo $_TMP
		echo "second if"
	else
		_TMP=$_TMP${myarray[$VAR_count]}$VAR_spaceSlash
	fi
	echo $_TMP
	let "VAR_count++"
done
#add another loop to remove the .zip part
echo $_TMP
echo $_MR_FILE

#add else statement for files with no spaces to put _MR_FILE into _TMP


$mv ~/Downloads/$_TMP .
$unzip $_TMP
$rm $_TMP
#open $find *.html
#atom .
}
day_start
