 yum install wget vim tar
wget https://repo.mysql.com/mysql84-community-release-el9-1.noarch.rpm
yum localinstall mysql84-community-release-el9-1.noarch.rpm -y

yum repolist enabled | grep "mysql.-community."
rpm --import https://repo.mysql.com/RPM-GPG-KEY-mysql-2023
yum install mysql-community-server -y
service mysqld status
service mysqld start
service mysqld status
systemctl enable mysqld.service
systemctl status mysqld.service
mysql --version
grep 'temporary password' /var/log/mysqld.log
mysql_secure_installation
 
[root@192 opt]# mysql_secure_installation
 
Securing the MySQL server deployment.
 
Enter password for user root:
 
The existing password for the user account root has expired. Please set a new password.
 
New password: xxxxxxx
 
Re-enter new password:xxxxxxxx
The 'validate_password' component is installed on the server. The subsequent steps will run with the existing configuration of the component. Using existing password for root.
 
Estimated strength of the password: 100
Change the password for root ? ((Press y|Y for Yes, any other key for No) : y
 
New password: xxxxxxxx
Re-enter new password: xxxxxxx
 
 
Estimated strength of the password: 100
Do you wish to continue with the password provided?(Press y|Y for Yes, any other key for No) : y
 
By default, a MySQL installation has an anonymous user, allowing anyone to log into MySQL without having to have a user account created for them. This is intended only for testing, and to make the installation go a bit smoother. You should remove them before moving into a production environment.
 
Remove anonymous users? (Press y|Y for Yes, any other key for No) : y
Success.
 
 
Normally, root should only be allowed to connect from 'localhost'. This ensures that someone cannot guess at the root password from the network.
 
Disallow root login remotely? (Press y|Y for Yes, any other key for No) : n
 
... skipping.
By default, MySQL comes with a database named 'test' that anyone can access. This is also intended only for testing, and should be removed before moving into a production environment.
 
 
Remove test database and access to it? (Press y|Y for Yes, any other key for No) : y
- Dropping test database...
Success.
 
- Removing privileges on test database...
Success.
 
Reloading the privilege tables will ensure that all changes made so far will take effect immediately.
 
Reload privilege tables now? (Press y|Y for Yes, any other key for No) : y
Success.
 
All done!
 
Login into he MySQL Server:
 
[root@192 opt]# mysql –u root –p    🡨 hit the enter key
Enter password: xxxxxx   🡨 give/type your own password which you have given while installing mysql 
 
has context menu