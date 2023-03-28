#!/bin/bash

. colors.sh

echo Printing colors variants...

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
echo -e "${T_R}${B_W} This is red text with white background ${Rst}"
echo -e "$T_G$B_W This is green text with white background $Rst"
echo -e "$T_Y$B_R This is yellow text with red background $Rst"
echo -e "$T_B$B_W This is blue text with white background $Rst"
echo -e "$T_P$B_W This is purple text with white background $Rst"
echo -e "$T_C$B_W This is cyan text with white background $Rst"
echo -e "$T_W$B_B This is white text with blue background $Rst"
