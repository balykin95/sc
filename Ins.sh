#!/bin/bash
#Количество созданных ссылок
count=0;
for i in $(cat IPs)
do
echo $i >> script.log;
ssh $i << EOF
if sudo find /usr/local/vesta/data/packages/default.pkg
then
echo $i - exists >> script.log
#нихуя
else
count=$(($count + 1))
sudo cp -s /usr/local/vesta/data/packages/aero.pkg /usr/local/vesta/data/packages/default.pkg
echo $i - created >> script.log
fi
EOF
done
echo $count >> count.log; 
