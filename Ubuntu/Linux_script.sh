#!/bin/bash
#This Source Code Form is subject to the terms of the Mozilla Public
#License, v. 2.0. If a copy of the MPL was not distributed with this
#file, You can obtain one at http://mozilla.org/MPL/2.0/.
#for use in Cyberpatriot script for use for team Wifi Warriors and this team only sorry not my rules
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
	
	apt-get install ufw
	apt-get install gufw
	ufw enable
}

pswd_secure()
{
#Makes passwords secure
	apt install libpam-cracklib
	cd /etc/pam.d
	#error checking to avoid damage to the system
	if ["$?" == "0"]; then
		echo "Something went right editing common password"
		sed -i '/(#1)/ D'
		else
		#notify user to ensure to fix passwords manually
		bell()
		back(1);fore(0);echo "Something went wonkey edit common-password manually to ensure that something did not break"
	fi
	##############owo#############whats this?###################
	# Here is the dangerous part of editing the file.          #
	# Sean please test this code on a non important test file. #
	############################################################
	
	#1 sed -i '25 d' ./common-password
	#1 sed -i '24 a password        requisite                     pam_cracklib.so retry=3 minlen=8 difok=3 ucredit=-1 lcredit=-1 dcredit=-1 ocredit=-1' ./common-password 
	#1 sed -i '26 d' ./common-password
	#1 sed -i '25 a password        [success=1 default=ignore]      pam_unix.so obscure sha512 remember=5 minlen=8' ./common-password
	
	#time to edit common-auth
	sed -i '$ a auth required pam_tally2.so deny=5 onerr=fail unlock_time=1800' ./common-auth
	}
	
install_bum()
{
#install bum Boot Up Manager
	apt-get install bum
}

delete_MP3()
{
cd /home/
mp3s=$(ls -t *".mp3" | head -n 1)

#menu to select weather to delete or not
title="Select example"
prompt="Pick an option:"
options=("Keep" "Delete" "Examine")

echo "$title"
PS3="$prompt "
select opt in "${options[@]}" "Quit"; do 

    case "$REPLY" in

    1 ) echo "You picked $opt which is to Keep the files";;
    2 ) echo "You picked $opt which is to delete the files";rm *.mp3;;
    3 ) echo 'you picked $opt which is to look thru all files found"; rm -i *.mp3;;

    * ) echo "Invalid option. Try another one.";continue;;

    esac
    break

	
	
	
	
