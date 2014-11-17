FROM centos:centos6

RUN yum --setopt=tsflags=nodocs -y update
RUN yum clean all
