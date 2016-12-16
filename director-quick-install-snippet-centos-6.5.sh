#!/bin/bash

yum install -y wget

wget --directory-prefix=/etc/yum.repos.d/ http://archive.cloudera.com/director/redhat/6/x86_64/director/cloudera-director.repo
yum update -y

wget --no-check-certificate --no-cookies --header 'Cookie: oraclelicense=accept-securebackup-cookie' http://download.oracle.com/otn-pub/java/jdk/8u102-b14/jdk-8u102-linux-x64.rpm
yum localinstall -y jdk-8u102-linux-x64.rpm

yum install -y cloudera-director-server cloudera-director-client
service cloudera-director-server start

sudo service iptables save
sudo chkconfig iptables off
sudo service iptables stop

