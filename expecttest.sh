#!/usr/bin/expect

    set ipaddrtext "read -p 'Enter the server IP Address' ipaddrval"
    #spawn "echo '****PACKAGE INSTALLATION SHELL SCRIPT****'"    
    send "$ipaddrtext\r"
    #spawn "read -p 'Enter Username : ' unameval"
    #spawn "read -p 'Enter Password : ' passval"

    #set serverip $ipaddrval
    #set username $unameval
    #set password $passval

    #spawn "echo $ipaddrval" 	

#send "pwd"
#send "ls -l"
#}

#spawn ssh $login@$addr
#expect "$login@$addr\'s password:"
#send "$pw\r"
#expect "#"
#send "pwd\r"
#send "ls -la\r"
#send "echo 'Installing Docker Container...'\r"
#send "yum install docker"
#interact
#send "aptitude search '~i ^php$'\r"

