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

#Fuctions for separate processes
#You can replace "Safari.app" in "/Applications/Safari.app" with any browser you have in your Applications folder in Mac
one(){
	open -a /Applications/Safari.app #<Enter URL 1 without the brackets>
}
two(){
	open -a /Applications/Safari.app #<Enter URL 2 without the brackets>
}
three() {
  open -a /Applications/Safari.app #<Enter URL 3 without the brackets>
}
four(){
  open -a /Applications/Safari.app #<Enter URL 4 without the brackets>
}
five(){ # Function for creating a sub menu. This will loop till you select option to go back to Main Menu
	while true
	do
		project
	done
}
#Sample sub menu I used for opening all my gmail accounts with easy one click
six(){
	while true
	do
		gmail
	done
}

# Uncomment the below lines to add more functions 
#eight(){
#	open -a /Applications/Safari.app
#}
#nine(){
#	open -a /Applications/Safari.app
#}

#SUB-MENU:  You can create a submenu using the following syntax and entering your customized functions. 
#           Here first() second() and third() represents the inner options for opening URLs
first(){
	open -a /Applications/Safari.app #<Enter URL for first sub option without the brackets>
}
second(){
	open -a /Applications/Safari.app #<Enter URL for second sub option without the brackets>
}
third(){
	open -a /Applications/Safari.app #<Enter URL for third sub option without the brackets>
}

submenu(){ 
	tput clear
  echo -e "+----------------------+"
  echo -e "|  EASY ACCESS         |"
  echo -e "+----------------------+\n"
  echo -e "\nSelect links:\n" # Read choices
  echo "1. first "
  echo "2. second"
  echo "3. third"
  echo "4. Go to Main Menu"  # To go back to main menu
  local choice
	read -n1 -s choice  

  case $choice in # Switch cases for inner options
    1) first ;;
    2) second ;;
    3) third ;;
    4) break ;; # Break ends the sub menu and go back to main menu
    *) echo -e "${RED}Error...${STD}" && sleep 2
  esac
}


#SAMPLE sub menu for all my gmail accounts
mail1(){
	open -a /Applications/Safari.app # Enter your URL for gmail account 1
}
mail2(){
	open -a /Applications/Safari.app # Enter your URL for gmail account 2
}
#You can create more functions like above for adding more accounts

#Gmail sub menu
gmail(){
	tput clear
  echo -e "+----------------------+"
  echo -e "|      EASY ACCESS.    |"
  echo -e "+----------------------+\n"
  echo -e "\nSelect Your mail account:\n"
  echo "1. abc@gmail.com"
  echo "2. xyz@gmail.com"
  echo "3. Go to Main Menu"
  
  local choice
  read -n1 -s choice # read choice

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
  echo -e "|      EASY ACCESS     |"
  echo -e "+----------------------+\n"
  echo -e "Select application to start\n"
  echo "1. One"
  echo "2. Two"
  echo "3. Three"
  echo "4. Four"
  echo "5. Submenu"
  echo "6. Mails"
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
		'q') clear && echo -e "\nSystem Exit !\n"  && exit 0 ;;
		*) echo -e "${RED}Error...${STD}" && sleep 2
	esac
}

# While loop so that the menu stays active till you press to Quit
while true
do
	show_menu
	read_options
done
