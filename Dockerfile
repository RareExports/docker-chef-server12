FROM centos:centos7
LABEL maintainer="anightonhoth@gmail.com"

RUN yum makecache \
    && yum update -y \
    && yum clean all
