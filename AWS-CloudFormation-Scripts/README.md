

#cloudera-director-2.1.0-basic-public-network.yaml
##Description: 
- setup a VPC + Security Group + Instance on AWS for Cloudera Director. It shall also launch install script on CentOS to install Director 2.1.0.
##Bug: 
- UserData is not correctly launched.
- centos user is used instead of root (obvious for security reasons). But does not enough priviledges to deactivate firewall.
##Next steps:
- variabilize the username (instead of aheib), for resources naming & management

