FROM centos:latest
MAINTAINER sanjay.dahiya332@gmail.com
RUN yum install -y httpd \
  zip \
 unzip 
ADD https://www.free-css.com/assets/files/free-css-templates/download/page270/marvel.zip /var/www/html/
WORKDIR /var/www/html
RUN unzip marvel.zip
RUN cp -rvf marvel/* .
RUN rm -rf marvel marvel.zip 
CMD ["/usr/sbin/httpd", "-D",  "FOREGROUND"]
EXPOSE 80
