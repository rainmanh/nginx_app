Chef Cookbook for A Go Lang  Tiny Application
============================

This is a simple test Chef Cookbook written for the Ubuntu platform (64 Bits)

This cookbook has been written for educational purposes as a Proof of Concept to test NGINX (as a load balancer) against 2 Listeners Written in go Lang.

The Instances or servers have been provisioned using AWS.

On this example I will purely work on AWS infrastructure base.

This Cookbook can install both:
  * nginx server
  * 2 Listeners written in GoLang acting as Application Servers.
  
The only "parametrised" part in here are in the attributes section of the nginx cookbook.

## Requirements

* A Chef Server where you have to store the cookbooks
* Chef client installed on all the target boxes (1 webserver and 2 Application Servers).
* The right roles defined per platform so the Webservers should run: recipe[nginx] while the webservers should have: recipe[goapp]

## Attributes

The cookbook got as attributes the Application Servers Containing the GoLang Web Application.

So that is 
```
<server>:<port>
```

attributes/default.rb

```
default[:nginx][:application1] = '54.144.199.212:848'
default[:nginx][:application2] = '54.159.255.31:8484'
```

## Usage

This cookbook ideally should be run along with the goapp application installing first the Application And Later the Webserver

Examples below for the run list.

```json
{
  "name":"my_node",
  "run_list": [
    "recipe[goapp]"
  ]
}
```

```json
{
  "name":"my_node",
  "run_list": [
    "recipe[nginx]"
  ]
}
```
