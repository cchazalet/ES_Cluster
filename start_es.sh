#!/bin/bash

echo "Ce script lanche elasticsearch sur les machines tc405-112-01 à 13"
read -p 'Username: ' uservar
read -sp 'Password: ' passvar
echo

for i in 01 02 03 04 05 06 07 08 09 10 11 12 13
do 
    echo "########### tc405-112-$i.insa-lyon.fr ###########"
    sshpass -p "$passvar" ssh -o StrictHostKeyChecking=no $uservar@tc405-112-$i.insa-lyon.fr '/tmp/elasticsearch-7.10.2/bin/elasticsearch &'
    echo "tc405-112-$i.insa-lyon.fr : send command ok..."
done

