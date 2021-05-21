#!/bin/bash
# option1()
# {
#     dialog --title "Linux Dialog Utility Infobox" --backtitle "Linux Shell Script Tutorial" --infobox "This is dialog box called infobox, which is used to show some information on screen, Thanks to Savio Lam and Stuart Herbert to give us this utility. Press any key. . . " 7 50 ; read
# }

# option2()
# {
#     dialog --title "Linux Dialog Utility Msgbox" --backtitle "Linux Shell Script Tutorial" --msgbox "This is dialog box called msgbox, which is used to show some information on screen which has also Ok button, Thanks to SavioLamand Stuart Herbert to give us this utility. Press any key. . . " 9 50
# }

dialog --title "Alert : Delete File" --backtitle "Linux Shell ScriptTutorial" --yesno "Do you want to delete ‘/usr/letters/jobapplication’ file" 7 60 
sel=$? 
# Lay ra exit status 
case $sel in 
    0) echo "User select to delete file";; 
    1) echo "User select not to delete file";; 
    255) echo "Canceled by user by pressing [ESC] key";; 
esac

dialog --title "Inputbox - To take input from you" --backtitle "Linux ShellScript Tutorial" --inputbox "Enter your name please" 8 60 2>/tmp/input.$$ 
sel=$? 
na=`cat /tmp/input.$$` 
case $sel in 
    0) echo "Hello $na" ;; 
    1) echo "Cancel is Press" ;; 
    255) echo "[ESCAPE] key pressed" ;; 
esac 
rm -f /tmp/input.$$
# cau lenh 2>/tmp/input.$$ de dua gia tri nhap vao tep /tmp/input.$$


dialog --backtitle “Linux Shell Script Tutorial” --title “Main Menu” --menu “Move using [UP] [DOWN],[Enter] to select” 15 50 3 
Date/time “Shows Date and Time” Calendar “To see calendar” Editor “To start vi editor” 2>/tmp/menuitem.$$ 
menuitem=`cat /tmp/menuitem.$$` 
opt=$? 
case $menuitem in 
    Date/time) date;; 
    Calendar) cal;;
    Editor) vi;; 
esac
rm -f /tmp/menuitem.$$
