update-rc.d -f ssh remove
update-rc.d -f ssh defaults
cd /etc/ssh/
mkdir insecure_origin_keys
mv ssh_host_* insecure_origin_keys/
dpkg-reconfigure openssh-server
echo ''
echo '==============='
echo 'next /etc/default/grub will be open, change GRUB_TIMEOUT to 0'
echo 'press [ENTER]'
read ok
nano /etc/default/grub
update-grub
