FROM alpine:latest

RUN apk add elinks

RUN adduser -D elinks

USER elinks

WORKDIR /home/elinks

RUN mkdir ./.elinks

ENTRYPOINT ["/usr/bin/elinks"]

CMD elinks
