FROM balenalib/intel-nuc-debian:stretch-run

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
COPY cups/cupsd.conf /etc/cups/cupsd.conf

# Add avahi conf file
COPY avahi/avahi-daemon.conf /etc/avahi/avahi-daemon.conf

# Run Script
CMD bash run.sh
