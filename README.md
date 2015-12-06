Proof of Concept for 1 Webserver and 2 Application Servers
============================

This is a POC for a webserver based on NGINX acting as a Load Balancer and 2 Application Servers which got a small Application written in GoLang

I have tested this setup using 2 different approaches:

* Ansible (containing the playbooks relevant to this setup) (Ansible is a PUSH methodology)
* Chef (containing the cookbooks relevant to this setup) (CHEF uses a PULL methodology)


The root directory also got the following: 

* A "documentation" section where I demonstrate how the LoadBalancer (nginx) works and Also and overview on HOW to automate the build and deployment of the GoLang Application into the target servers
* The Source code for the Application Server Written in GoLang

When writing this cookbooks/playbooks I consider whether to build the code on the fly at installation time or not. In the end I decided to use the pre-compiled code for security reasons. 
Traditionally Production environment shouldn't have any sort of compiling tools but it should be a minimal installation with all the basic requirements, reason it's always security and to let hackers the less amount of tools possible if they ever break in the system.

