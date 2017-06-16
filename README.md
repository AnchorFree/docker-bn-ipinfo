### A simple ip info service

This is a plain simple service, a web-server (nginx), listening on port 80,
and responding to the every request it gets to the `/ping` url with 
a client's ip address and a pong message:

```
curl http://ipinfo.example.com/ping
{"ip":"192.168.192.168", "answer":"pong"}
```

Host header value(if any) in a client's request is ignored, it can
be anything you want.  
