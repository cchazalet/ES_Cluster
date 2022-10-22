#!/bin/bash

echo "Ce script lanche elasticsearch sur les machines tc405-112-01 à 13"
read -p 'Username: ' uservar
read -sp 'Password: ' passvar
echo

for i in 01 02 03 
do 
    echo "########### tc405-112-$i.insa-lyon.fr ###########"
    sshpass -p "$passvar" ssh -o StrictHostKeyChecking=no $uservar@tc405-112-$i.insa-lyon.fr 'pkill -f elasticsearch'
    sshpass -p "$passvar" ssh -o StrictHostKeyChecking=no $uservar@tc405-112-$i.insa-lyon.fr 'nohup /tmp/elasticsearch-7.10.2/bin/elasticsearch > /tmp/elastic.out 2> /tmp/elastic.err < /dev/null &'
    echo "tc405-112-$i.insa-lyon.fr : send command ok..."
done

