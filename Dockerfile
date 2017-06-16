FROM anchorfree/openresty
MAINTAINER Vladimir Zorin

RUN ln -sf /dev/stdout /var/log/nginx/access.log && ln -sf /dev/stderr /var/log/nginx/error.log 
ENTRYPOINT ["/usr/openresty/nginx/sbin/nginx", "-c", "/etc/nginx/nginx.conf"]

RUN mkdir /home/download 
COPY vhost.conf /etc/nginx/vhosts/default.conf

ENTRYPOINT ["/usr/openresty/nginx/sbin/nginx","-c","/etc/nginx/nginx.conf"]
