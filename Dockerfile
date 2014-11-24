FROM centos:centos6

RUN rpm -ivh http://dl.fedoraproject.org/pub/epel/6/x86_64/epel-release-6-8.noarch.rpm
RUN yum --setopt=tsflags=nodocs -y update
RUN yum --setopt=tsflags=nodocs -y install wget tar
RUN wget http://download.gluster.org/pub/gluster/glusterfs/3.6/LATEST/CentOS/glusterfs-epel.repo -O /etc/yum.repos.d/glusterfs-epel.repo
RUN yum --setopt=tsflags=nodocs -y install joe glusterfs-fuse attr
RUN yum clean all

RUN wget https://github.com/coreos/etcd/releases/download/v0.4.6/etcd-v0.4.6-linux-amd64.tar.gz -P /tmp && \
tar zxf /tmp/etcd-v0.4.6-linux-amd64.tar.gz -C /usr/bin --strip-components=1 && \
rm /tmp/etcd-v0.4.6-linux-amd64.tar.gz

RUN wget https://github.com/kelseyhightower/confd/releases/download/v0.6.3/confd-0.6.3-linux-amd64 -O /usr/bin/confd && \
chmod +x /usr/bin/confd && \
mkdir -p /etc/confd/{conf.d,templates}
