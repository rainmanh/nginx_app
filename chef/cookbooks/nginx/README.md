nginx Cookbook
==============
This cookbook runs a basic installation of NGINX and sets the Webserver as a LoadBalancer for 2 Application Servers.

Attributes
----------

The cookbook got as attributes the Application Servers Containing the GoLang Web Application.

```
default[:nginx][:application1] = '54.144.199.212:848'
default[:nginx][:application2] = '54.159.255.31:8484'
```
Usage
-----
#### nginx::default

Just include `nginx` in your node's `run_list` if you want to run it independently:

```json
{
  "name":"my_node",
  "run_list": [
    "recipe[nginx]"
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
- [Gonzalo Fernandez Ordas] - Initial release of nginx

