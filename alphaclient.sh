#!/bin/bash
#set -x

Client_node1=( nodeABC nodeXYZ )
#Client_node1=( X1.X1.X1.X1 X2.X2.X2.X2 )
Username=admin
#Pass=PASSWORD@123

function alphaclient() {

for i in ${Client_node1[@]}
do

        login=`sshpass -p'password' ssh $Username@$i 'sudo grep -c "password" /var/log/secure | more'`

        if [ ! -z "$login" ]; then

                echo "$i had $login attempts."

        fi

done
}

alphaclient

