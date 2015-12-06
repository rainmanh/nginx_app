Proof of the log Balancer Working
============================


Testing what is the current state for the balancer.
All the below will show Private IPs but the different instance/server are communicated through PUBLIC IPs.
I am running a "curl" command in the NGINX box to the localost as the NGINX server is listening on all the interafaces for TCP port 80

```
curl localhost
Hi there, I'm served from ip-10-235-175-91!
```


Process Running in the Application Node as shown below:

```
root      4599     1  0 16:19 ?        00:00:00 /opt/goapp/web_app
```


Killing the process

```
root@ip-10-235-44-134:/opt/goapp# kill 4599
```

Checking on nginx error logs:

```
2015/12/05 16:33:40 [error] 3432#0: *14 connect() failed (111: Connection refused) while connecting to upstream, client: xxx.xxx.xxx.xxx, server: , request: "GET / HTTP/1.1", upstream: "http://54.144.199.218:8484/", host: "54.146.134.55"
```


Checking if the balancer is currently doing what it should:
```
curl localhost
Hi there, I'm served from ip-10-235-175-91
```
The LoadBalancer works as expected!
