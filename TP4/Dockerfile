FROM ubuntu/bind9

COPY config_file/named.conf /etc/bind/named.conf
COPY config_file/l1-1.zone /etc/bind/zones/l1-1.zone

RUN apt-get update && \
    apt-get -y install nano && \
    chown -R bind:bind /etc/bind/zones && \
    chmod -R 770 /etc/bind/zones

CMD ["/usr/sbin/named", "-g", "-c", "/etc/bind/named.conf", "-u", "bind"]
