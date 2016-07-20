FROM python:2.7-alpine

MAINTAINER Jie Lu <764664@gmail.com>

RUN pip install shadowsocks

ENV SS_SERVER_PORT 8388
ENV SS_PASSWORD password
ENV SS_METHOD aes-256-cfb
ENV SS_TIMEOUT 300

CMD /usr/local/bin/ssserver -p ${SS_SERVER_PORT} -k ${SS_PASSWORD} -m ${SS_METHOD} -t ${SS_TIMEOUT}