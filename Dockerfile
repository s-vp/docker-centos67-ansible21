FROM centos:6.7
MAINTAINER Sergey Paramonov <serg.paramonov@s-vp.com>

ENV http_proxy http://webproxy.merck.com:8080
ENV https_proxy http://webproxy.merck.com:8080


RUN yum clean all 
RUN rpm -ivh http://dl.fedoraproject.org/pub/epel/6/x86_64/epel-release-6-8.noarch.rpm
RUN yum -y update
RUN yum install -y git wget tar ca-certificates ansible    

RUN mkdir -p /srv/ansible/roles
RUN echo -e '[defaults]\nhost_key_checking = False' > /etc/ansible/ansible.cfg
RUN echo -e '[local]\nlocalhost' > /etc/ansible/hosts


