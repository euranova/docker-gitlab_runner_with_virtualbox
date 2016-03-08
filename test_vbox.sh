#!/bin/bash

cd /root
export VBOX_USER_HOME=/root/VirtualBox\ VMs
vagrant init ubuntu/precise64
vagrant up --provider virtualbox
echo $(vagrant ssh -c "echo Hello") | grep Hello
