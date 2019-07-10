#!/bin/bash

# Tell the container that DBUS should report to Host OS
export DBUS_SYSTEM_BUS_ADDRESS=unix:path=/host/run/dbus/system_bus_socket

# link dbus to host
ln -s /host/run/dbus /var/run/dbus

# add local link network route
route add -net 169.254.0.0/16 dev eno1

# start avahi
/etc/init.d/avahi-daemon start

# start cups
/etc/init.d/cups start

# wait forever
while true
do
  tail -f /dev/null & wait ${!}
done
