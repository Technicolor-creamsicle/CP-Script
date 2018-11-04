#!/bin/bash
#This Source Code Form is subject to the terms of the Mozilla Public
#License, v. 2.0. If a copy of the MPL was not distributed with this
#file, You can obtain one at http://mozilla.org/MPL/2.0/.
#for use in Cyberpatriot script for use for team Maj. Malfunction and this team only sorry not my rules
#the varible down below in the grafic for when the script starts
machine="
# ▄▀▀▄    ▄▀▀▄  ▄▀▀█▄▄▄▄  ▄▀▀▀▀▄     ▄▀▄▄▄▄   ▄▀▀▀▀▄   ▄▀▀▄ ▄▀▄  ▄▀▀█▄▄▄▄ 
#█   █    ▐  █ ▐  ▄▀   ▐ █    █     █ █    ▌ █      █ █  █ ▀  █ ▐  ▄▀   ▐ 
#▐  █        █   █▄▄▄▄▄  ▐    █     ▐ █      █      █ ▐  █    █   █▄▄▄▄▄  
#  █   ▄    █    █    ▌      █        █      ▀▄    ▄▀   █    █    █    ▌  
#   ▀▄▀ ▀▄ ▄▀   ▄▀▄▄▄▄     ▄▀▄▄▄▄▄▄▀ ▄▀▄▄▄▄▀   ▀▀▀▀   ▄▀   ▄▀    ▄▀▄▄▄▄   
#         ▀     █    ▐     █        █     ▐           █    █     █    ▐   
#               ▐          ▐        ▐                 ▐    ▐     ▐        
# ▄▀▀▀█▀▀▄  ▄▀▀▀▀▄       ▄▀▀▀█▀▀▄  ▄▀▀▄ ▄▄   ▄▀▀█▄▄▄▄                     
#█    █  ▐ █      █     █    █  ▐ █  █   ▄▀ ▐  ▄▀   ▐                     
#▐   █     █      █     ▐   █     ▐  █▄▄▄█    █▄▄▄▄▄                      
#   █      ▀▄    ▄▀        █         █   █    █    ▌                      
# ▄▀         ▀▀▀▀        ▄▀         ▄▀  ▄▀   ▄▀▄▄▄▄                       
#█                      █          █   █     █    ▐                       
#▐                      ▐          ▐   ▐     ▐                            
# ▄▀▀▄ ▄▀▄  ▄▀▀█▄   ▄▀▄▄▄▄   ▄▀▀▄ ▄▄   ▄▀▀█▀▄    ▄▀▀▄ ▀▄  ▄▀▀█▄▄▄▄        
#█  █ ▀  █ ▐ ▄▀ ▀▄ █ █    ▌ █  █   ▄▀ █   █  █  █  █ █ █ ▐  ▄▀   ▐        
#▐  █    █   █▄▄▄█ ▐ █      ▐  █▄▄▄█  ▐   █  ▐  ▐  █  ▀█   █▄▄▄▄▄         
#  █    █   ▄▀   █   █         █   █      █       █   █    █    ▌         
#▄▀   ▄▀   █   ▄▀   ▄▀▄▄▄▄▀   ▄▀  ▄▀   ▄▀▀▀▀▀▄  ▄▀   █    ▄▀▄▄▄▄          
#█    █    ▐   ▐   █     ▐   █   █    █       █ █    ▐    █    ▐          
#▐    ▐            ▐         ▐   ▐    ▐       ▐ ▐         ▐               
"
#clears the screen and loggs the shell into root
clear
tput bel; sudo su
#prints the logo and sets up to reduce errors
printf "$machine"
#setup
unalias -a
echo "unalaias -a" >> ~/.bashrc
echo "unalaias -a" >> /root.bashrc
#this just unalias everything so less bad stuff happens
fore()
{
tput setaf
}
back()
{
tput setab
}
bell()
{
tput bel
}
#user alert functions
#</setup>
sleep 5
#clears the logo and continues to the actual script
clear
#starting to make functions and displaying setup
update()
{
#updates all programs
	apt-get update
	apt-get upgrade
}

gufw_on()
{
#installs and enables gufw and ufw
	apt-get install gufw
	ufw enable
}

pswd_secure()
{
#Makes you able to make passwords secure
	apt install libpam-cracklib
	
	
