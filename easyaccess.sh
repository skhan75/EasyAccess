#!/bin/bash
#title            :easyaccess.sh
#description      :This script will allow you to start your day to day regular applications,
#									 urls, etc with just one press of a button via a wel defined user menu with options to select from
#author           :Sami Ahmad Khan
#date             :17/10/2017
#version          :1.0
#usage            :bash easyaccess.sh
#notes            :please change url's as per requirement
#bash_version     :3.2.57(1)-release (x86_64-apple-darwin16)
#====================================================================================================================

one(){
	open -a /Applications/Safari.app https://mydesk.autodesk.com
}
two(){
	open -a /Applications/Safari.app https://share.autodesk.com/Pages/default.aspx
}
three() {
  open -a /Applications/Safari.app https://www.paylocity.com
}
four(){
  open -a /Applications/Safari.app https://www.fieldglass.net
}
five(){
	while true
	do
		project
	done
}
six(){
  open -a /Applications/Safari.app https://s1.ariba.com/gb/?realm=autodesk
}
seven(){
	while true
	do
		gmail
	done
}
eight(){
	open -a /Applications/Safari.app https://wiki.autodesk.com/display/EIS/Spartan+On-boarding
}
nine(){
	open -a /Applications/Safari.app https://share.autodesk.com/sites/IT/DesktopProductivity/SitePages/Ticket%20Submission.aspx?mobile=0
}

#PROJECT
dds(){
	open -a /Applications/Safari.app https://wiki.autodesk.com/pages/viewpage.action?pageId=171167041
}
dds-p2(){
	open -a /Applications/Safari.app https://wiki.autodesk.com/pages/viewpage.action?title=DDS%3A+Digital+Distribution+Systems+Phase+1&spaceKey=EIS
}
ddws(){
	open -a /Applications/Safari.app https://wiki.autodesk.com/display/EIS/Project%3A+Digital+Distribution+WebServices+DDWS-SG+%3A+PJ71
}
spartan(){
	open -a /Applications/Safari.app https://wiki.autodesk.com/display/EIS/Project+Spartan
}
project(){
	tput clear
  echo -e "+----------------------+"
  echo -e "| AUTODESK EASY ACCESS |"
  echo -e "+----------------------+\n"
  echo -e "\nSelect Project links:\n"
  echo "1. DDS "
	echo "2. DDS Phase-1"
  echo "3. DDWS"
	echo "4. Spartan"
	echo "5. Go to Main Menu"
  local choice
	read -n1 -s choice

  case $choice in
    1) dds ;;
    2) dds-p2 ;;
    3) ddws ;;
		4) spartan ;;
		5) break ;;
    *) echo -e "${RED}Error...${STD}" && sleep 2
  esac
}


#MAIL
mail1(){
	open -a /Applications/Safari.app 'https://mail.google.com/mail/u/0/#inbox'
}
mail2(){
	open -a /Applications/Safari.app 'https://mail.google.com/mail/u/1/#inbox'
}
gmail(){
	tput clear
  echo -e "+----------------------+"
  echo -e "| AUTODESK EASY ACCESS |"
  echo -e "+----------------------+\n"
  echo -e "\nSelect Your mail account:\n"
  echo "1. sami.ahmadkhan12@gmail.com"
	echo "2. skhan75@hawk.iit.edu"
  echo "3. Go to Main Menu"
  local choice
	read -n1 -s choice

  case $choice in
    1) mail1 ;;
    2) mail2 ;;
    3) break ;;
    *) echo -e "${RED}Error...${STD}" && sleep 2
  esac
}

show_menu(){
  tput clear
  echo -e "+----------------------+"
  echo -e "| AUTODESK EASY ACCESS |"
  echo -e "+----------------------+\n"
  echo -e "Select application to start\n"
	echo "1. My Desk"
	echo "2. Autodesk SharePoint"
	echo "3. Paylocity"
  echo "4. Fieldglass"
  echo "5. Project"
  echo "6. Ariba Purchase"
  echo "7. Mails"
	echo "8. Spartan On-boarding"
	echo "9. Submit Ticket"
  echo -e "\nq. Press 'q' to Quit\n"

}

read_options(){
	local choice
	read -n1 -s choice
	case $choice in
		1) one ;;
		2) two ;;
    3) three ;;
    4) four ;;
    5) five ;;
    6) six ;;
    7) seven ;;
		8) eight ;;
		9) nine ;;
	'q') clear && echo -e "\nSystem Exit !\n"  && exit 0 ;;
		*) echo -e "${RED}Error...${STD}" && sleep 2
	esac
}

while true
do

	show_menu
	read_options
done
