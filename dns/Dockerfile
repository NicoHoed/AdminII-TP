FROM ubuntu/bind9                                     # Use the base Ubuntu image with BIND9 already installed

COPY config_file/named.conf /etc/bind/named.conf      # Copy the named.conf configuration file into the BIND configuration directory
COPY config_file/l1-1.zone /etc/bind/zones/l1-1.zone  # Copy the l1-1.zone file into the BIND zones directory

RUN apt-get update && \                               # Update package list and install nano
    apt-get -y install nano && \
    chown -R bind:bind /etc/bind/zones && \           # Change ownership of the directory to user 'bind'
    chmod -R 770 /etc/bind/zones                      # Change permissions to allow read, write, and execute

# Command to start BIND9 when the container starts
CMD ["/usr/sbin/named", "-g", "-c", "/etc/bind/named.conf", "-u", "bind"]
