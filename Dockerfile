FROM centos:latest
RUN yum install sudo -y
RUN yum install httpd -y

RUN mkdir /root/html

COPY *.html  /root/html/

COPY ./index.html  /root/html

CMD ["/usr/sbin/httpd","-D","FOREGROUND"]

