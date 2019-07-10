# balena-cups

This started as a clone of https://github.com/willswire/balena-cups that has been modified to run on an intel NUC.

It required the following changes to get it completely working with a bonjour/dnssd printer:

- added avahi-daemon.conf that disables dbus
- moved run.sh to root level
- link /host/run/dbus to /var/run/dbus
- add route for local-link addresses
- start local avahi-daemon
- moved Dockerfile to root level
- fixed Dockerfile paths and copy avahi-daemon into place
- fix docker-compose.yml to set the build context to the source root
