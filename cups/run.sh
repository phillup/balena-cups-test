#!/bin/bash

# Tell the container that DBUS should report to Host OS
export DBUS_SYSTEM_BUS_ADDRESS=unix:path=/host/run/dbus/system_bus_socket

# start cups
/etc/init.d/cups start

# wait forever
while true
do
  tail -f /dev/null & wait ${!}
done
