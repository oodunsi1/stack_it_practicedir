#!/bin/bash

#Declaring Command Line Arguments
#DIR=$1

ts=$(date +'%m%d%y%M%S')
tt=`date +"%m%d%y%M%S"`

#echo $ts

#Variable Declaration
export PRACTICEDIR=$1
export DIR=$2_$tt
export FILE=$3
export B_file=$ts'_'bk'_'$3
export BK_file=$tt'_'$3



echo ${FILE}
echo ${B_file}
echo ${BK_file}

# Creating our backup directory
echo "Staring the backup job..."
mkdir ${PRACTICEDIR}/${DIR}

# Copying a file(s) the backup  directory
echo "Copying ${PRACTICEDIR}/${FILE} to ${PRACTICEDIR}/${DIR}"
cp ${PRACTICEDIR}/${FILE} ${PRACTICEDIR}/${DIR}/${B_file}

# Listing content of backup directory
echo "Listing content of ${DIR} directory"
ls -ltr ${PRACTICEDIR}/${DIR}

#Counting Files in Myfirstdir Directory
echo "Counting files in ${DIR} directory"
ls -ltr ${PRACTICEDIR}/${DIR}|wc -l


# end of script
echo "finishing the backup job..."
