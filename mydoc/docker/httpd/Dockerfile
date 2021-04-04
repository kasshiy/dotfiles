FROM ubuntu:latest
COPY ./settings/.vimrc /root/.vimrc
RUN apt update\
&& apt install -y vim curl
CMD "httpd-foreground"
