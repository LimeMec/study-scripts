#!/bin/bash
# Option 1: Run  computer scan
# Option 2: Run  network scan
# Option 3: Quit script

BOLD='\e[1m'
NORM='\e[0m'

echo
echo
sleep 0.5
echo "***********************************************************************"
echo -e "                        ${BOLD} [ EASY SCANNER ]${NORM}" 
echo "***********************************************************************"
echo
echo
echo -e "${BOLD} Choose script to start: (1-3)${NORM}"
PS3=":"
options=("Run computer scan" " Run network scan" "Quit")
select opt in "${options[@]}"
do
case $opt in
"Run computer scan")
echo
echo "Running computer scan..."
echo
echo
echo
sleep 0.5
echo "*************************************************************************"
echo -e "              ${BOLD}[ COMPUTER SCAN - OS, HARDWARE, NETWORK ]${NORM}" 
echo "*************************************************************************"

echo
echo
sleep 0.5
echo -e "     ${BOLD}[ LOGGED IN: ]${NORM}"
# Skriver ut användare och hur länge systemet vart igång
echo "Logged in user: $(whoami)"
echo "Created: $(date)"
echo "System uptime:  $(uptime -p)"


echo
sleep 0.5
echo -e "     ${BOLD}[ OPERATING SYSTEM: ]${NORM}"
# Skriver ut information om  operativsystemet
echo "OS: $(uname -o)"
echo "Nodename: $(uname -n)"
echo "Kernel release: $(uname -r)"
echo "Kerner version: $(uname -v)" 
echo "HW Architecture: $(uname -m)"


echo
sleep 0.5
echo -e "     ${BOLD}[ GPU ]${NORM}"
# Skriver ut modell av grafikkort
lspci | grep -i vga 


echo
sleep 0.5
echo -e "     ${BOLD}[ CPU: ]${NORM}"
# Skriver ut specifikation på CPU
lscpu | grep -E "Model name|Modellnamn"
lscpu | grep -E "Vendor ID|Tillverkare"
lscpu | grep -E "Architecture|Arkitektur"
lscpu | grep -E "CPU op-mode|Driftsläge"
lscpu | grep -E "Byte Order|Byteordning" 
lscpu | grep -E "CPU\(s\)|CPU\(er\)"
lscpu | grep -E "Core\(s\) per socket|Kärna\(or\) per socket"
lscpu | grep -E "Thread\(s\) per core|Tråd\(ar\) per kärna"
lscpu | grep -E "Socket\(s\)|Socket"
lscpu | grep -E "NUMA node\(s\)|NUMA-noder"
echo "Max MHz:                  	         $(cat /proc/cpuinfo | grep 'cpu MHz' | head -n 1 | awk '{print $4}')"
echo "Min MHz:                          	 $(cat /proc/cpuinfo | grep 'cpu MHz' | tail -n 1 | awk '{print $4}')"


echo
sleep 0.5
echo -e "     ${BOLD}[ MEMORY: ]${NORM}"
# Skriver ut användning av minnet
free -h


echo
sleep 0.5
echo -e "     ${BOLD}[ DISK SPACE: ]${NORM}"
# Skriver ut användning av lagringsutrymmet
df -h --exclude-type=tmpfs --exclude-type=devtmpfs
echo " "


echo
sleep 0.5
echo -e "     ${BOLD}[ NETWORK: ]${NORM}"
# Skriver ut modellnamn på nätverkskort
echo "Model name:  $(lspci | grep -i ethernet)"
# Skriver ut MAC-adress
MAC=$(ip link show $IFACE | grep ether | awk '{print $2}')
echo "MAC-adress:  $MAC"
# Skriver ut IP-adress
IP=$(ip a show $IFACE | grep 'inet ' | awk '{print $2}' | cut -d'/' -f1)
echo "IP-adress:   $IP"
# Skriver ut Gateway
GW=$(ip route | grep default | awk '{print $3}')
echo "Gateway:     $GW"
# Skriver ut Nätmask
NM_CIDR=$(ip a show $IFACE | grep 'inet ' | awk '{print $2}' | cut -d'/' -f2)
echo "Netmask:     /$NM_CIDR"


echo
echo
echo "*************************************************************************"
echo "                        Coded By LimeMec"
echo "*************************************************************************"
echo
echo 
;;
"Run network scan")
echo "Running network scan"
break
;;
"Quit")
echo "Quitting script"
break
;;
*)
echo "Invalid choise: $REPLY"
;;
esac
echo -e "${BOLD} Choose script to start: (1-2)${NORM}"
echo "1) Run a computer inventory"
echo "2) Quit"
done

