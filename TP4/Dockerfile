from ubuntu/bind9

add config_file/named.conf /etc/bind/named.conf
add config_file/l1-1.zone /etc/bind/l1-1.zone

run apt-get update
run apt-get -y install nano

CMD ["/usr/sbin/named", "-g", "-c", "/etc/bind/named.conf", "-u", "bind"]
