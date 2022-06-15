FROM public.ecr.aws/amazonlinux/amazonlinux:latest
MAINTAINER zohaib.ashraf@eurustechnologies.com
RUN yum update -y \
&& yum install -y httpd  zip unzip 
ADD https://www.free-css.com/assets/files/free-css-templates/download/page256/portfolio-perfect.zip  /var/www/html
WORKDIR /var/www/html
RUN unzip portfolio-perfect.zip
RUN cp -rvf  html-freebie-portfolio-perfect-master/*  .
CMD ["/usr/sbin/httpd", "-D",  "FOREGROUND"]
EXPOSE 80
