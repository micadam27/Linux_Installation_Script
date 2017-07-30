wget http://prdownloads.sourceforge.net/webadmin/webmin-1.850-1.noarch.rpm
dnf -y install perl perl-Net-SSLeay openssl perl-IO-Tty perl-Encode-Detect
rpm -U webmin-1.850-1.noarch.rpm
firewall-cmd --permanent --zone=public --add-port=10000/tcp
firewall-cmd --set-default-zone=public
firewall-cmd --reload
