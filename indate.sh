#!/bin/bash

add-apt-repository ppa:jonathonf/python-3.6
apt-get update
apt-get install python2.7-dev -y
apt-get install python3.6 -y
apt-get install python3.6-dev -y
apt install python-pip -y
apt install python3-pip -y
apt-get install python-httplib2 -y
apt-get install python3-httplib2 -y
apt-get install python-http-parser -y
pip install --upgrade pip
apt-add-repository ppa:brightbox/ruby-ng
apt-get update
apt-get install ruby2.5 ruby2.5-dev -y
echo 
echo
echo '_______________________________________'
echo '   версия ruby должна быть: 2.5.1p57'
echo '   версия gem должна быть 2.7.6'
echo '---------------------------------------'
echo
ruby2.5 -v
gem2.5 -v
echo '_______________________________________'
echo 
echo 'press enter'
read
apt-get update -y && apt-get dist-upgrade -y

echo '_______________________________________'
echo
echo '---------------------------------------'
echo '_______________________________________'
apt-get update -y
echo '---------------------------------------'
apt-get dist-upgrade -y
echo '---------------------------------------'

pip install --update
pip3 install --update
echo 'установка зависимостей SSH'
 apt install python-paramiko -y
echo '---------------------------------------'
echo 'установка зависимостей HTTP'
 apt install python-pycurl curl -y
echo '---------------------------------------'
echo "установка зависимостей AJP"
 pip install ajpy
echo '---------------------------------------'
echo "установка зависимостей LDAP"
 apt install libldap-2.4-2 -y
echo '---------------------------------------'
echo"установка зависимостей SMB"
 apt install python-impacket -y
echo '---------------------------------------'
echo "установка зависимостей Oracle"
 python -m pip install cx_Oracle --upgrade
echo '---------------------------------------'
echo "установка зависимостей MySQL"
 apt install python-mysqldb -y
echo '---------------------------------------'
echo "установка зависимостей RDP (NLA)"
 apt install freerdp2-x11 -y
echo '---------------------------------------'
echo "установка зависимостей PostgreSQL"
 apt install python-psycopg2 -y
echo '---------------------------------------'
echo "установка зависимостей VNC"
 apt install python-crypto -y
echo '---------------------------------------'
echo "установка зависимостей DNS"
 apt install python-dns -y
echo '---------------------------------------'
echo "установка зависимостей NET keyword"
 apt install python-ipy -y
echo '---------------------------------------'
echo "установка зависимостей SNMP"
 apt install python-pyasn1 python-pysnmp4 -y
echo '---------------------------------------'
echo "установка зависимостей IKE"
 apt install ike-scan -y
echo '---------------------------------------'
echo "ZIP пароли"
 apt install unzip -y
echo '---------------------------------------'
echo "keystore файлы"
 apt install default-jre -y
echo '---------------------------------------'
echo "установка зависимостей SQLCipher"
 apt install libsqlite3-dev libsqlcipher-dev -y
 pip install pysqlcipher
echo '_______________________________________'
echo
echo '---------------------------------------'
echo '_______________________________________'
echo " обновление модулей"
 pip install pysqlcipher ajpy
echo '---------------------------------------'
 python -m pip install cx_Oracle --upgrade
 easy_install pip==7.1.2
