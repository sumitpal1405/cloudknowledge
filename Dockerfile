FROM centos:latest
MAINTAINER sanjay.dahiya332@gmail.com
RUN yum install -y httpd \
  zip \
 unzip 
ADD https://www.free-css.com/assets/files/free-css-templates/download/page270/xbe.zip /var/www/html/
WORKDIR /var/www/html
RUN unzip xbe.zip
RUN cp -rvf xbe/* .
RUN rm -rf xbe xbe.zip 
CMD ["/usr/sbin/httpd", "-D",  "FOREGROUND"]
EXPOSE 80
