FROM alpine

RUN apk add libgcc gcompat
RUN cd /tmp && wget https://github.com/shadowsocks/shadowsocks-rust/releases/download/v1.7.0-alpha.15/shadowsocks-v1.7.0-alpha.15-nightly.x86_64-unknown-linux-musl.tar.xz && tar xf *.xz && chmod +x ssserver && mv ssserver /usr/local/bin/ && rm -rf /tmp/*

ENV SS_SERVER_PORT 8388
ENV SS_PASSWORD password
ENV SS_METHOD aes-256-gcm

CMD /usr/local/bin/ssserver -s "[::]:${SS_SERVER_PORT}" -k ${SS_PASSWORD} -m ${SS_METHOD}