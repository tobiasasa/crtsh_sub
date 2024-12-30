#!/bin/bash
DOMAIN=$1
curl -s "https://crt.sh/?q=$DOMAIN&output=json" | jq -r '.[].name_value' | sed 's/\*\.//g' | grep -vE "^www\." | sort -u > "t_${DOMAIN}.txt"
echo "Subdominios guardados en t_${DOMAIN}.txt"

