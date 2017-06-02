#!/bin/bash

day_start(){
_CUR_DIR=$(pwd)
echo $_CUR_DIR

cd ~/downloads
_MR_FILE=$(ls -Art | tail -n 1)
echo $_MR_FILE
cd $_CUR_DIR

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
VAR_spaceSlash='\\ '
echo $VAR_spaceSlash
_TMP=
while [ $VAR_loop -gt $VAR_count ]
do
	echo "run while"
	echo $VAR_count
	if [ $VAR_count -eq 0 ]
	then
		_TMP=${myarray[0]}$VAR_spaceSlash
		echo $_TMP
		echo "first if"
	fi
	if [ $VAR_count -eq $expr $VAR_loop - 1 ]
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
echo $_TMP
echo $_MR_FILE

#mv ~/Downloads/$_MR_FILE .
#unzip $_MR_FILE
#rm $_MR_FILE
#open $find *.html
#atom .
}
day_start
