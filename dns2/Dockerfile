FROM ubuntu/bind9:9.18-22.04_beta

COPY config_file/named.conf /etc/bind/named.conf

RUN apt-get update && \
    apt-get -y install nano
