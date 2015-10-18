# docker-syslog

A tiny syslog node for Docker.

## Description

This image provides a minimal syslog node. It accepts remote syslog messages on
UDP port 514, and logs them to STDOUT for retrieval with `docker logs` or
something like [logspout](https://github.com/gliderlabs/logspout).

## Exposed Ports

  * 514/udp

# License
[MIT](https://tldrlegal.com/license/mit-license)

# Contributors
  * [Chris Olstrom](https://colstrom.github.io/) | [e-mail](mailto:chris@olstrom.com) | [Twitter](https://twitter.com/ChrisOlstrom)
