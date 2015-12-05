Ansible Playbook for A Go Lang  Tiny Application
============================

This is a simple test playbook written for the Ubuntu platform.
This playbook has been written for educational purpose with the purpose of testing NGINX against a Listener Written in go.
This Playbook can install both:
  * A nginx server
  * A Listener written in GoLang to Application Servers.
  
The build has been parametrised as explained below..
  
1. To install the NGINX server :

ansible-playbook -i inventories/<ENVIRONMENT> nginx.yml -l webservers --private-key=</path/to/key/if/required/>

Example:
```
ansible-playbook -i inventories/production nginx.yml -l webservers --private-key=/path/key.pem
```

2. To install the Go Listener Application :

ansible-playbook -i inventories/<ENVIRONMENT> app.yml -l application	 --private-key=</path/to/key/if/required/>

Example:
```
ansible-playbook -i inventories/production app.yml -l application --private-key=/path/key.pem
```

To update the environmental variables so to add or remove servers simply edit the files within the **inventories** directory:
  * production
  * staging

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

To update or modify the target Application Servers defined in nginx you have the following files within the **vars** directory:
  * production
  * staging

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

