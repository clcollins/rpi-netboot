FROM centos:centos8
LABEL maintainer "Chris Collins <collins.christopher@gmail.com>"

RUN dnf install --assumeyes dnsmasq \
  && dnf clean all \
  && rm -rf /var/cache/yum

COPY rpi-netboot.conf /etc/dnsmasq.d/rpi-netboot.conf

EXPOSE 69/UDP
