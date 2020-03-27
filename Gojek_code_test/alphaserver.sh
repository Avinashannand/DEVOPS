#!/bin/bash
set -x

#if we have to another server where we need to reflects the client's server metrics details.
#Server_ip=X.X.X.X
#Username=admin

#function alphaserver() {

#Prerequists that ssh from alphaserver to alphaclient is password less.
#scp -r {Path_of_directory}/alphaclient.sh $Username@$Server_ip:/home/{$Username}
#ssh $Username@$Server_ip << EOF
#chmod 777 /home/{$Username}/alphaclient.sh
# It is assumed that client_node mentioned in the alphaclient.sh file should easily authenticated from this alphaserver machine.
#./home/{$Username}/alphaclient.sh

#EOF
#}
#alphaserver


#if we are on same server where we have to display the metrics of clients server details.

function alphaserver() {

./alphaclient.sh

}

alphaserver

