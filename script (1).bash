#!/bin/bash
read -p "Введите IPv4-адрес: " ip
binary="" 
for octet in $(echo $ip | tr '.' ' ')
do
    binary=$(echo "obase=2; $octet" | bc)
    echo -n "${binary}."
done
echo ""
