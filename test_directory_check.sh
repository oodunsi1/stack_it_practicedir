#!/bin/bash

dir_check=$1

if [[ -d ${dir_check} ]]

then
  echo "Directory already exists, sleeping for 10 seconds"
  sleep 10
else
  echo "Directory does not exists, creating new directory: ${dir_check}"
  mkdir -p ${dir_check}
fi
