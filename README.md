# shadowsocks-docker

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
docker run --name ss -d -e SS_SERVER_PORT=9999 -p 9999:9999 observer17/shadowsocks-docker
```

