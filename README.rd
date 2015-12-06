Proof of Concept for 1 Webserver and 2 Application Servers
============================

This is a POC for a webserver based on NGINX acting as a Load Balancer and 2 Application Servers which got a small Application written in GoLang

I have tested this setup using 2 different approaches:

* Ansible (containing the playbooks relevant to this setup)
* Chef (containing the cookbooks relevant to this setup)

The root directory also got the following: 

* A "documentation" section where I demonstrate how the LoadBalancer (nginx) works and Also and overview on HOW to automate the build and deployment of the GoLang Application into the target servers
* The Source code for the Application Server Written in GoLang
