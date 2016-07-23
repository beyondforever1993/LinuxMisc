#!/bin/sh

if [ $# -ne 2 ]
then
    echo "Usage: `basename $0` filename execute-file "
    exit 1
fi

#while read line
#do
#    #echo "$line"
#    symbol_addr=$(expr match "$line" '.*\(0x[[:alnum:]]\{7,8\}\).*')
#    #echo $symbol_addr
#    if [ -n "$symbol_addr" ]; then
#        addr2line -p -f -e "$2" $symbol_addr
#    fi
#done  <"$1"
symbol_address_nums=0

symbol_address_string=$(grep -Eo "0x[[:alnum:]]{7,8}" "$1")
#echo "$symbol_address_string"
#echo $symbol_address_string
#echo "--------------------------"

for item in $symbol_address_string
do
    #echo "item=$item"
    addr2line -p -f -e "$2" "$item"
done

exit 
