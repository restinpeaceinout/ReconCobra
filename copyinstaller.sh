# *************************************************************************************** #
# ---------------------------------- EULA NOTICE ---------------------------------------- #
#                     Agreement between "Haroon Awan" and "You"(user).                    #
# ---------------------------------- EULA NOTICE ---------------------------------------- #
#  1. By using this piece of software your bound to these point.                          #
#  2. This an End User License Agreement (EULA) is a legal between a software application #
#     author "Haroon Awan" and (YOU) user of this software.                               #
#  3. This software application grants users rights to use for any purpose or modify and  #
#     redistribute creative works.                                                        #
#  4. This software comes in "is-as" warranty, author "Haroon Awan" take no responsbility #
#     what you do with by/this software as your free to use this software.                #
#  5. Any other purpose(s) that it suites as long as it is not related to any kind of     #
#     crime or using it in un-authorized environment.                                     #
#  6. You can use this software to protect and secure your data information in any        #
#     environment.                                                                        #
#  7. It can also be used in state of being protection against the unauthorized use of    #
#     information.                                                                        #
#  8. It can be used to take measures achieve protection.                                 #
# *************************************************************************************** #

#!/bin/bash

red="\e[0;31m"
green="\e[0;32m"
off="\e[0m"

function banner() {
clear
echo "                                                                                               ";
echo "                                                                                               ";
echo "                                                                                               ";
echo "        .########...########..######.....#######...##....##.....######.....#######....######....########......########..      "; 
echo "         .##.....##..##.......##....##..##.....##..###...##....##....##...##.....##...##...##...##.....##....##.....##.	 "; 
echo "         .##.....##..##.......##........##.....##..####..##....##.........##.....##...##..##....##......##...##.....##.	 "; 
echo "         .########...######...##........##.....##..##.##.##....##.........##.....##...##..##....#########....#########.	 "; 
echo "         .##...##....##.......##........##.....##..##..####....##.........##.....##...##...##...##....##.....##.....##.	 "; 
echo "         .##....##...##.......##....##..##.....##..##...###....##....##...##.....##...##...###..##.....##....##.....##.	 "; 
echo "         .##.....##..########..######....#######...##....##.....######.....#######....#######...##......##...##.....##.	 ";  
echo "                                       	  Ultimate Recon and Foot Printing Software     Version 1.0a        ";   
echo "                                                        [Coded By: Haroon Awan]                                       ";
echo "                                                   [Contact: mrharoonawan@gmail.com]                                  ";
echo "                                                                                               ";
echo "                                                                                               ";
echo "                                                                                               ";
}

function linux() {
echo -e "$red [$green+$red]$off Installing Perl ...";
sudo apt-get install -y perl
echo -e "$red [$green+$red]$off Installing JSON Module ...";
cpan install JSON
echo -e "$red [$green+$red]$off Installing Extra Perl Modules ...";
echo "y" | cpan install WWW::Mechanize
echo "y" | cpan install use HTML::TokeParser
echo "y" | cpan install Term::ANSIColor
echo "y" | cpan install Mojo::DOM
echo "y" | cpan install Data::Dumper
echo "y" | cpan install Win32::Console::ANSI
echo "y" | cpan install HTML::TableExtract
echo -e "$red [$green+$red]$off Checking directories..."
if [ -d "/usr/share/ReconCobra" ]; then
    echo -e "$red [$green+$red]$off A Directory ReconCobra Was Found! Do You Want To Replace It? [Y/n]:" ;
    read replace
    if [ "$replace" = "y" ]; then
      sudo rm -r "/usr/share/ReconCobra"
      sudo rm "/usr/share/icons/ReconCobra.png"
      sudo rm "/usr/share/applications/ReconCobra.desktop"
      sudo rm "/usr/local/bin/ReconCobra"

else
echo -e "$red [$green✘$red]$off If You Want To Install You Must Remove Previous Installations";
echo -e "$red [$green✘$red]$off Installation Failed";
        exit
    fi
fi 

echo -e "$red [$green+$red]$off Installing ...";
echo -e "$red [$green+$red]$off Creating Symbolic Link ...";
echo -e "#!/bin/bash
perl /usr/share/ReconCobra/ReconCobra.pl" '${1+"$@"}' > "reconcobra";
    chmod +x "reconcobra";
    sudo mkdir "/usr/share/ReconCobra"
    sudo cp "install.sh" "/usr/share/ReconCobra"
    sudo cp "reconcobra.pl" "/usr/share/ReconCobra"
    sudo cp "config/ReconCobra.jpeg" "/usr/share/icons"
    sudo cp "config/ReconCobra.desktop" "/usr/share/applications"
    sudo cp "reconcobra" "/usr/local/bin/"
    rm "reconcobra";

echo "y" | apt-get install xdg-utils
echo "y" | apt-get install hping3
echo "y" | apt-get install python3
echo "y" | git clone https://github.com/haroonawanofficial/cobra.git
echo "y" | git clone https://github.com/haroonawanofficial/maahro.git
echo "y" | git clone https://github.com/haroonawanofficial/ShaheenX.git
echo "y" | git clone https://github.com/yassineaboukir/Asnlookup.git
echo "y" | git clone https://github.com/exiftool/exiftool.git
echo "y" | git clone https://github.com/sensepost/BiLE-suite.git
echo "y" | https://github.com/haroonawanofficial/vasl.git
echo "y" | git clone https://github.com/haroonawanofficial/panthera.git
echo "y" | git clone https://github.com/naqushab/SearchEngineScrapy.git
echo "y" | apt-get install nmap
cd SearchEngineScrapy
pip install -r requirements.txt
sudo virtualenv --python="2" env
sudo env/bin/activate
cd ..
echo "y" | git clone https://github.com/FortyNorthSecurity/EyeWitness.git
cd EyeWitness/setup
chmod u+x setup.sh
./setup.sh


if [ -d "/usr/share/ReconCobra" ] ;
then
echo -e "$red [$green+$red]$off ReconCobra Successfully Installed And Will Start In 5s!";
echo -e "$red [$green+$red]$off You can execute ReconCobra by typing reconcobra"
sleep 5;
reconcobra
else
echo -e "$red [$green✘$red]$off ReconCobra Cannot Be Installed On Your System! Use It As Portable !";
    exit
fi 
}

if [ -d "/usr/bin/" ];then
banner
echo -e "$red [$green+$red]$off ReconCobra Will Be Installed In Your System";
linux
else
echo -e "$red [$green✘$red]$off ReconCobra Cannot Be Installed On Your System! Use It As Portable !";
    exit
fi