#!/bin/sh

syslogd -C

until netstat -px | grep -s -E '^unix[^/]+/syslog' >/dev/null; do
  sleep .1
done

echo -n | nc -lk -p 514 -u | logger &

exec logread -f
