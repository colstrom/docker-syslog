#!/bin/sh

syslogd -C

until netstat -px | grep -s -E '^unix[^/]+/syslog' >/dev/null; do
  sleep .1
done

nc -l -u -p 514 | logger &

exec logread -f
