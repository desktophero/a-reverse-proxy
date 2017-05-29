#!/bin/sh

set -e
if [ -f /data/startup.sh ] ; then
  echo "startup file found in /data directory"
  /data/startup.sh
else
  /usr/sbin/httpd -DFOREGROUND
fi
