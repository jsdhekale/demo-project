FROM centos:latest
MAINTAINER jit.dhekale@gmail.com
RUN yum install -y httpd \
zip \
unzip
ADD https://www.free-css.com/assets/files/free-css-templates/download/page286/cobsine.zip /var/www/html
WORKDIR /var/www/html
RUN unzip kindle.zip
RUN cp -rvf markups-kindle/*
RUN rm -rf_MACOSX markups-kindle kindle.zip
CMD["usr/sbin/httpd", "-D", "FOREGROUND"]
EXPOSE 80