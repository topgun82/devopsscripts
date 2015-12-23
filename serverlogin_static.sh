#!/usr/bin/expect

set login "root"
set addr "IP HERE"
set pw "PASSWORD HERE"

spawn ssh $login@$addr
expect "$login@$addr\'s password:"
send "$pw\r"
expect "#"
send "pwd\r"
send "ls -la\r"
send "echo 'Installing Docker Container...'\r"
#send "yum install docker"
interact
send "aptitude search '~i ^php$'\r"
