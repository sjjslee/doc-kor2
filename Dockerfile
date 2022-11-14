FROM centos:centos7.9.2009
MAINTAINER "korea-lee <sjjslee@naver.com>
LABEL "purpose"="pratice"
RUN yum -y install epel-release
RUN yum -y install nginx && yum -y clean all  && rm -rf /var/cache
COPY index.html /var/www/html/

CMD ["nginx", "-g", "daemon off;"]
