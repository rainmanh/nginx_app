goapp Cookbook
==============
 This cookbok is a simple proof of concept for a 64 Bits compiled piece of GoLang code.

 This cookbook has been written to install a simple Web Application Written in GoLang

Requirements
------------

This cookbook requires Ubuntu 64 bits as the code has been compiled on 64 bits.

Usage
-----
#### goapp::default

Just include `goapp` in your node's `run_list`:

```json
{
  "name":"my_node",
  "run_list": [
    "recipe[goapp]"
  ]
}
```

This cookbook ideally should be run along with the goapp application installing first the Application And Later the Webserver

```json
{
  "name":"my_node",
  "run_list": [
    "recipe[goapp]",
    "recipe[nginx]"
  ]
}
```



License and Authors
-------------------
Authors: Gonzalo Fernandez Ordas
