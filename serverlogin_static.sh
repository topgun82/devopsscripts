#!/usr/bin/expect

set login "root"
#set addr "161.202.173.247"
#set pw "MaMedN6P"
set addr "75.126.93.218"
set pw "AKlg6Wxs"

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
