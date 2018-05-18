update-rc.d -f ssh remove
update-rc.d -f ssh defaults
cd /etc/ssh/
mkdir insecure_origin_keys
mv ssh_host_* insecure_origin_keys/
dpkg-reconfigure openssh-server
