Playbook for A Go Lang  Tiny Application
============================

This is a simple test playbook written for the Ubuntu platform.
This playbook has been written for educational purpose with the purpose of testing NGINX against a Listener Written in go.
This Playbook can install both:
  * *nginx server
  * *A Go Listener to Application Servers.
  
The build has been parametrised as explained below..
  
To install the NGINX server :

ansible-playbook -i inventories/<ENVIRONMENT>   --extra-vars="basedir=/path/to/playbook/" nginx.yml --private-key=</path/to/key/if/required/>

Example:
```
ansible-playbook -i inventories/production   --extra-vars="basedir=/Users/tester/git/playbooks/" nginx.yml --private-key=/path/key.pem  -vvv
```

To install the Go Listener Application :

ansible-playbook -i inventories/<ENVIRONMENT>   --extra-vars="basedir=/path/to/playbook/" app.yml -l webservers	 --private-key=</path/to/key/if/required/>

Example:
```
ansible-playbook -i inventories/production   --extra-vars="basedir=/Users/tester/git/playbooks/" app.yml -l application --private-key=/path/key.pem  -vvv
```

To update the environmental variables to add or remove servers simply edit the files within the **inventories** directory:
  * *production
  * *staging

example:
**inventories/production** 
```
[all:vars]
env=production

[webservers]
54.146.134.51

[application]
54.144.199.212
54.159.255.31
```

To update or modify the target Application Servers defined in nginx you have the files within the **vars** directory:
  * *production
  * *staging

example:

**vars/production.yml** 
```
application1: "54.144.199.212:8484"
application2: "54.159.255.31:8484"
```

References 
=============================

* [The Go Programming Language](https://golang.org/)
* [Ansible](http://www.ansible.com/)
* [nginx](https://www.nginx.com/)
* [ubuntu](http://www.ubuntu.com/)
