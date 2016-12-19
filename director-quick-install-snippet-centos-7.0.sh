#!/bin/bash

sudo yum install -y wget

sudo wget --directory-prefix=/etc/yum.repos.d/ http://archive.cloudera.com/director/redhat/6/x86_64/director/cloudera-director.repo
sudo yum update -y

sudo wget --no-check-certificate --no-cookies --header 'Cookie: oraclelicense=accept-securebackup-cookie' http://download.oracle.com/otn-pub/java/jdk/8u112-b15/jdk-8u112-linux-x64.rpm
sudo yum localinstall -y jdk-8u112-linux-x64.rpm

sudo yum install -y cloudera-director-server cloudera-director-client
sudo service cloudera-director-server start

