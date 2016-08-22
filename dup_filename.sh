#!/bin/bash

declare -A filenameArray
filenameString=""

for file in $(find -name "*.h")
do
    index=$(basename $file)
    if [ ! -z ${filenameArray["$index"]} ]; then
        if [[ ! "$filenameString" =~ "$index" ]]; then
            filenameString="$filenameString"" $index"
        fi
    else
        filenameArray["$index"]="$file"
    fi

done

echo "Follows a list of files with duplicate names: "
echo $filenameString
echo

for file in $filenameString
do
    find -name $file
    echo
done

