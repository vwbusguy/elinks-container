FROM opensuse/tumbleweed:latest

RUN zypper in -y elinks mujs

RUN useradd elinks

USER elinks

WORKDIR /home/elinks

RUN mkdir ./.elinks

COPY --chown=elinks elinks.conf ./.elinks/

ENTRYPOINT ["/usr/bin/elinks"]

CMD elinks
