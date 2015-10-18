#!/bin/sh

if [ -z $SYSLOG_PORT_514_UDP_ADDR ]; then
  syslogd -n -C &
else
  syslogd -n -C -L -R $SYSLOG_PORT_514_UDP_ADDR &
fi

until netstat -px | grep -s -E '^unix[^/]+/syslog' >/dev/null; do
  sleep .1
done

echo -n | nc -lk -p 514 -u | logger &

exec logread -f
