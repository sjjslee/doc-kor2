FROM centos:centos7.9.2009
MAINTAINER "korea-lee <sjjslee@naver.com>
LABEL "purpose"="pratice"
RUN yum -y install epel-release
RUN yum -y install nginx && yum -y clean all  && rm -rf /var/cache
COPY index.html /var/www/html/
RUN chgrp -R 0 /var/log/nginx  && chmod -R g=u /var/log/nginx

CMD ["nginx", "-g", "daemon off;"]
