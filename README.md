# shadowsocks-docker

A Docker container for shadowsocks.

Based on [python:2.7-alpine](https://hub.docker.com/r/library/python/).

Only **21MB**.

[Link to Docker Hub](https://hub.docker.com/r/observer17/shadowsocks/)

## Environment Variables

1. SS_SERVER_PORT
2. SS_PASSWORD
3. SS_METHOD
4. SS_TIMEOUT

## Usage

The default settings are:

- Port 8388
- Password password
- Method aes-256-cfb
- Timeout 300

You can change these using the `-e` parameter of Docker.

Example:

```shell
docker run --name ss -d -e SS_SERVER_PORT=9999 -p 9999:9999 --restart unless-stopped observer17/shadowsocks
```

```shell
docker logs -f ss
```

