#! /usr/bin/env bash
# Author: Xan

config=($(find config -type f))
vimDir="~/.vim"

if [ -d "${vimDir}" ]; then
    echo "mkdir ${vimDir}"
fi

for i in $(seq 0 $((${#config[@]} - 1)))
do
    fileName=$(echo ${config[${i}]} | sed 's/^config\///g')
    cat ${config[${i}]} >> ~/${fileName}
done
