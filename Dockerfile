FROM centos:centos6

RUN yum --setopt=tsflags=nodocs -y update
RUN yum --setopt=tsflags=nodocs -y install wget
RUN yum --setopt=tsflags=nodocs -y install tar
RUN yum clean all
