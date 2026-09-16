#!/bin/sh

IP=103.136.70.96   #dline-media

#sshuttle -r ro..@$IP:22 -x $IP 0/0 -v --dns
#sshuttle-run -r ro..@$IP:11222 -x $IP 0/0 -v --dns
sshuttle-run -r --ssh-cmd="ssh -p 11222 -c chacha20-poly1305@openssh.com" root@$IP -x $IP 0/0 -v --dns

