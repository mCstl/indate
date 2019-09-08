#!/bin/bash

echo ''
echo ""
echo "  ___ ___ _  _                __ _          " 
echo " / __/ __| || |  __ ___ _ _  / _(_)__ _ ___ "
echo " \__ \__ \ __ | / _/ _ \ ' \|  _| / _' (_-< "
echo " |___/___/_||_| \__\___/_||_|_| |_\__, /__/ "
echo "                                  |___/     "
echo ""
update-rc.d -f ssh remove
update-rc.d -f ssh defaults
cd /etc/ssh/
mkdir insecure_origin_keys
mv ssh_host_* insecure_origin_keys/
dpkg-reconfigure openssh-server
echo ''
echo '####################################'
echo ''
echo 'change port from 22 on other'
echo 'PermitRootLogin no'
echo ''
echo '####################################'
echo ''
echo 'press [ENTER]'
read ok
nano /etc/ssh/sshd_config
echo ''
echo ""
echo "   ___ ___ _   _ ___   _____ _                    _    "
echo "  / __| _ \ | | | _ ) |_   _(_)_ __  ___ ___ _  _| |_  "
echo " | (_ |   / |_| | _ \   | | | | '  \/ -_) _ \ || |  _| "
echo "  \___|_|_\\\___/|___/   |_| |_|_|_|_\___\___/\_,_|\__| "
echo ""
echo ''
echo '####################################'
echo ''
echo 'next /etc/default/grub will be open, change GRUB_TIMEOUT to 0'
echo ''
echo '####################################'
echo ''
echo 'press [ENTER]'
read ok
nano /etc/default/grub
update-grub
echo ''
echo '####################################'
echo ''
echo 'HISTSIZE=6'
echo 'HISTFILESIZE=6'
echo ''
echo '####################################'
echo ''
echo 'press [ENTER]'
read ok
nano ~/.bashrc
##
#chattr +i /etc/resolv.conf add DNS
##
echo ""
echo "  ___                   _      _    _  "
echo " | _ \___ _ __  ___    /_\  __| |__| | "
echo " |   / -_) '_ \/ _ \  / _ \/ _` / _` | "
echo " |_|_\___| .__/\___/ /_/ \_\__,_\__,_| "
echo "         |_|                           "
echo ""
add-apt-repository ppa:jonathonf/python-3.6
apt-add-repository ppa:brightbox/ruby-ng
apt update
apt dist-upgrade -y
apt install python2.7-dev -y
apt install python3.6 -y
apt install python3.6-dev -y
apt install python-pip -y
apt install python3-pip -y
apt install python-httplib2 -y
apt install python3-httplib2 -y
apt install python-http-parser -y
apt install tor -y
pip install --upgrade pip
apt install ruby2.5 ruby2.5-dev -y
#echo 
echo
#echo '_______________________________________'
#echo '   версия ruby должна быть: 2.5.1p57'
#echo '   версия gem должна быть 2.7.6'
#echo '---------------------------------------'
#echo
#ruby2.5 -v
#gem2.5 -v
#echo '_______________________________________'
#echo 
#echo 'press enter'
#read
gem install jekyll bundler
jekyll new blog
cd ~/blog
bundle update
#apt remove wpscan -y
apt update -y 
apt dist-upgrade -y
apt install wpscan -y
echo '_______________________________________'
echo
echo '---------------------------------------'
echo '_______________________________________'
pip install --update
pip3 install --update
echo 'creating dependencies SSH'
apt install python-paramiko -y
echo '---------------------------------------'
echo 'creating dependencies HTTP'
apt install python-pycurl curl -y
echo '---------------------------------------'
echo "creating dependencies AJP"
pip install ajpy
echo '---------------------------------------'
echo "creating dependencies LDAP"
apt install libldap-2.4-2 -y
echo '---------------------------------------'
echo"creating dependencies SMB"
apt install python-impacket -y
echo '---------------------------------------'
echo "creating dependencies Oracle"
python -m pip install cx_Oracle --upgrade
echo '---------------------------------------'
echo "creating dependencies MySQL"
apt install python-mysqldb -y
echo '---------------------------------------'
echo "creating dependencies RDP (NLA)"
apt install freerdp2-x11 -y
echo '---------------------------------------'
echo "creating dependencies PostgreSQL"
apt install python-psycopg2 -y
echo '---------------------------------------'
echo "creating dependencies VNC"
apt install python-crypto -y
echo '---------------------------------------'
echo "creating dependencies DNS"
apt install python-dns -y
echo '---------------------------------------'
echo "creating dependencies NET keyword"
apt install python-ipy -y
echo '---------------------------------------'
echo "creating dependencies SNMP"
apt install python-pyasn1 python-pysnmp4 -y
echo '---------------------------------------'
echo "creating dependencies IKE"
apt install ike-scan -y
echo '---------------------------------------'
echo "ZIP pass"
apt install unzip -y
echo '---------------------------------------'
echo "keystore files"
apt install default-jre -y
echo '---------------------------------------'
echo "creating dependencies SQLCipher"
apt install libsqlite3-dev libsqlcipher-dev -y
pip install pysqlcipher
echo '---------------------------------------'
echo "installing libxslt"
aptinstall libxml2-dev libxslt-dev
echo '_______________________________________'
echo
echo '---------------------------------------'
echo '_______________________________________'
echo "creating dependencies pysqlcipher ajpy"
pip install pysqlcipher ajpy
echo '---------------------------------------'
python -m pip install cx_Oracle --upgrade
easy_install pip==7.1.2
echo ""
echo "  ___                     _         _                 _  _  ___  "
echo " | _ \_ _ _____ ___  _ __| |_  __ _(_)_ _  ___  ___  | \| |/ __| "
echo " |  _/ '_/ _ \ \ / || / _| ' \/ _' | | ' \(_-< |___| | .' | (_ | "
echo " |_| |_| \___/_\_\\\_, \__|_||_\__,_|_|_||_/__/       |_|\_|\___| "
echo "                  |__/                                           "
echo ""
apt remove proxychains -y
cd /opt/
git clone https://github.com/rofl0r/proxychains-ng.git
cd proxychains-ng/
chmod 775 ./configure
bash ./configure --prefix=/usr --sysconfdir=/etc
make && make install
make install-config
./tools/install.sh -D -m 644 src/proxychains.conf /etc/proxychains.conf
./tools/install.sh -D -m 644 libproxychains4.so /usr/lib/libproxychains4.so
./tools/install.sh -D -m 755 proxychains4 /usr/bin/proxychains4

echo '#add'>>/etc/tor/torrc
echo 'TrackHostExits host,.domain,...'>>/etc/tor/torrc
echo 'ExcludeNodes {ru}, {ua}, {by}, {us}'>>/etc/tor/torrc
tor
