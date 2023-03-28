#!/bin/bash

# Text color variables
T_Black='\033[0;30m'        # Black
T_R='\033[0;31m'            # Red
T_G='\033[0;32m'            # Green
T_Y='\033[0;33m'            # Yellow
T_B='\033[0;34m'            # Blue
T_P='\033[0;35m'            # Purple
T_C='\033[0;36m'            # Cyan
T_W='\033[0;37m'            # White

# Bold text color variables
B_Black='\033[1;30m'        # Black
B_R='\033[1;31m'            # Red
B_G='\033[1;32m'            # Green
B_Y='\033[1;33m'            # Yellow
B_B='\033[1;34m'            # Blue
B_P='\033[1;35m'            # Purple
B_C='\033[1;36m'            # Cyan
B_W='\033[1;37m'            # White

# Underline text color variables
U_Black='\033[4;30m'        # Black
U_R='\033[4;31m'            # Red
U_G='\033[4;32m'            # Green
U_Y='\033[4;33m'            # Yellow
U_B='\033[4;34m'            # Blue
U_P='\033[4;35m'            # Purple
U_C='\033[4;36m'            # Cyan
U_W='\033[4;37m'            # White

# Background color variables
BG_Black='\033[40m'         # Black
BG_R='\033[41m'             # Red
BG_G='\033[42m'             # Green
BG_Y='\033[43m'             # Yellow
BG_B='\033[44m'             # Blue
BG_P='\033[45m'             # Purple
BG_C='\033[46m'             # Cyan
BG_W='\033[47m'             # White

# Reset text color variable
Rst='\033[0m'               # Reset


# Test colors
echo -e "$T_R This is red text $Rst"
echo -e "$T_G This is green text $Rst"
echo -e "$T_Y This is yellow text $Rst"
echo -e "$T_B This is blue text $Rst"
echo -e "$T_P This is purple text $Rst"
echo -e "$T_C This is cyan text $Rst"
echo -e "$T_W This is white text $Rst"
echo -e "$B_R This is bold red text $Rst"
echo -e "$B_G This is bold green text $Rst"
echo -e "$B_Y This is bold yellow text $Rst"
echo -e "$B_B This is bold blue text $Rst"
echo -e "$B_P This is bold purple text $Rst"
echo -e "$B_C This is bold cyan text $Rst"
echo -e "$B_W This is bold white text $Rst"
echo -e "$U_R This is underlined red text $Rst"
echo -e "$U_G This is underlined green text $Rst"
echo -e "$U_Y This is underlined yellow text $Rst"
echo -e "$U_B This is underlined blue text $Rst"
echo -e "$U_P This is underlined purple text $Rst"
echo -e "$U_C This is underlined cyan text $Rst"
echo -e "$U_W This is underlined white text $Rst"
echo -e "$T_R$B_W This is red text with white background $Rst"
echo -e "$T_G$B_W This is green text with white background $Rst"
echo -e "$T_Y$B_R This is yellow text with red background $Rst"
echo -e "$T_B$B_W This is blue text with white background $Rst"
echo -e "$T_P$B_W This is purple text with white background $Rst"
echo -e "$T_C$B_W This is cyan text with white background $Rst"
echo -e "$T_W$B_B This is white text with blue background $Rst"
