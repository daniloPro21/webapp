  FROM ubuntu:18.04
  MAINTAINER danielndam (danielndam9@gmail.com)
  RUN apt-get update
  RUN DEBIAN_FRONTEND=noninteractive apt-get install -y nginx git
  EXPOSE 80
  #ADD static-website-example/ /var/www/html
  RUN apt-get install git
  RUN rm -rf /var/www/html/*
  RUN git clone https://github.com/daniloPro21/static-website-example.git /varr
    /www/html/
    ENTRYPOINT ["/usr/sbin/nginx", "-g", "daemon off;"]
