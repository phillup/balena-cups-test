FROM balenalib/amd64-ubuntu:xenial

# Install the packages we need. Avahi will be included
RUN apt update && apt install -y \
    cups \
    avahi-utils \
    dbus \
    libnss-mdns \
    nano

# Add script
COPY run.sh /

# Enable USB devices
ENV UDEV 1

# Add cupsd.conf file
COPY cupsd.conf /etc/cups/cupsd.conf

#Run Script
CMD bash run.sh
