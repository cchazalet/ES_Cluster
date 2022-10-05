This code will deploy an ES cluster in TP E for the ELK project.

We choose the following configuration : 
3 master nodes :
tc405-112-01.insa-lyon.fr
tc405-112-02.insa-lyon.fr
tc405-112-03.insa-lyon.fr

and the remaining devices are data nodes. 

Logs are stored in /tmp/log and data in /tmp/data and the ES configuration file can be find in /elasticsearch-7.10.2

To avoid licence troubles, we've installed elasticsearch v7.10.2. 
