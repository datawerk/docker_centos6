FROM centos:centos6

RUN yum --setopt=tsflags=nodocs -y update
RUN yum --setopt=tsflags=nodocs -y install wget tar joe
RUN yum clean all
