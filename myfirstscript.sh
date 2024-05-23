#!/bin/bash

#Declaring Command Line Arguments
#DIR=$1

ts=$(date +'%m%d%y')
tt=`date +"%m%d%y"`

#echo $ts

#Variable Declaration
export PRACTICEDIR="/home/oluwatobiloba/practicedir"
export DIR="backup_$tt"
export FILE="myfirstfile.txt"
export B_file="myfirstfile_$ts.txt"

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
