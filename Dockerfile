FROM centos:centos8
LABEL maintainer "Chris Collins <collins.christopher@gmail.com>"

RUN dnf install --assumeyes dnsmasq \
  && dnf clean all \
  && rm -rf /var/cache/yum

COPY rpi-boot.conf /etc/dnsmasq.d/rpi-boot.conf

EXPOSE 69/UDP
