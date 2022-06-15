FROM public.ecr.aws/docker/library/centos:centos7.9.2009:latest
MAINTAINER zohaib.ashraf@eurustechnologies.com
RUN yum install -y httpd  && zip 
ADD https://www.free-css.com/assets/files/free-css-templates/download/page256/portfolio-perfect.zip  /var/www/html
WORKDIR /var/www/html
RUN unzip portfolio-perfect.zip
RUN cp -rvf  html-freebie-portfolio-perfect-master/*  .
CMD ["/usr/sbin/httpd", "-D",  "FOREGROUND"]
EXPOSE 80


