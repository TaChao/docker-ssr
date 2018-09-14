FROM alpine:3.8

ENV SSR_SERVER_PORT 443
ENV SSR_PASSWORD 000000
ENV SSR_METHOD aes-256-cfb
ENV SSR_USER nobody

RUN apk --no-cache add python py-pip

RUN pip install shadowsocks

CMD ssserver -p $SSR_SERVER_PORT -k $SSR_PASSWORD -m $SSR_METHOD --user $SSR_USER
