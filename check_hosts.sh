#!/bin/bash

FILE="$HOME/etc/hosts"
while IFS= read -r line; do
   [[ -z "$line" || "$line" =~ ^[[:space:]]*
   ip=$(echo "$line" | awk '{print $1}')
   if [[ "$ip" =~ ^([0-9]{1,3}\.){3}[0-9]{1,3}$ ]]; then
   IFS='.' read -r o1 o2 o3 o4 <<< "$ip"
   if (( 10
      echo "Valid IP: $ip"
   else
      echo "Invalid IP: $ip"
   fi
   else
     echo "Invalid IP format: $ip"
   fi
done < "$FILE"
