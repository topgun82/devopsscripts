#!/usr/bin/expect

    expect -c "
    echo "****PACKAGE INSTALLATION SHELL SCRIPT****"    
    read -p "Enter the server IP Address : " ipaddrval
    read -p "Enter Username : " unameval
    read -p "Enter Password : " passval

    set serverip $ipaddrval
    set username $unameval
    set password $passval
 
    #if [[ "$serverip" == ""] || ["$username" == ""] || ["$password" == "" ]]; then
    #    echo "One of the input was blank"
    #else
        #echo $username
        #echo $password
        read -p "Default port 22 [Y/N] ?" portcond
        if [[ "$portcond" == "Y" || $portcond == "y" ]]; then
                echo $serverip		
		#ssh $username@$serverip
                #expect $password;
                #send "$password\r"
                spawn ssh $username@$serverip
                expect "$username@$serverip\'s password:"
                send "$password\r"
                expect "#"
                send "pwd\r"
                interact

        else
                read -p "Enter the port number : " portnumber
                ssh -p $portnumber $username@$serverip
                #expect $password;
                #send "$password\r"
                spawn ssh -p $portnumber $username@$serverip
                expect "$username@$serverip\'s password:"
                send "$password\r"
                expect "#"
                send "pwd\r"
                interact
        #expect "\$ *$";
        #interact       
        fi
    #fi 
    "
