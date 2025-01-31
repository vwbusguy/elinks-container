FROM opensuse/tumbleweed:latest

RUN zypper in -y elinks libmozjs-128-0

RUN useradd elinks

USER elinks

WORKDIR /home/elinks

RUN mkdir ./.elinks

COPY --chown=elinks elinks.conf ./.elinks/

ENTRYPOINT ["/usr/bin/elinks"]

CMD elinks
