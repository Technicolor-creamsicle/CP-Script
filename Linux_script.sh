#!/bin/bash
#Cyber patriot script for use for team Maj. Malfunction and this team only sorry not my rules
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
echo "clear"
echo "sudo su"
#prints the logo and sets up to reduce errors
printf "$machine"
#setup
unalias -a
echo "unalaias -a" >> ~/.bashrc
echo "unalaias -a" >> /root.bashrc
#this just unalias everything so less bad stuff happens

sleep 5
#clears the logo and continues to the actual script
echo "clear"
#starting to make functions and displaying setup
update()
{
#updates all programs
echo "apt-get update; apt-get upgrade"
}

enable_ufw()
{
#installs and enables gufw and ufw
echo "apt-get install gufw"
echo "
