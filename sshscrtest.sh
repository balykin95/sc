#!/bin/bash
#InSide
ssh lexgarant.ru << EOF
if sudo find /usr/local/vesta/data/packages/default.pkg
then
echo 0
#нихуя
else
echo 1
touch ~/1
fi
EOF
#sudo cp -s /usr/local/vesta/data/packages/aero.pkg /usr/local/vesta/data/packages/default.pkg
