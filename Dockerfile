FROM alpine:3.4

MAINTAINER "yuhisa-jp"

ENV GISTURL="https://gist.githubusercontent.com/yuhisa-jp/4cbcd6dc79570c55f6d948"

RUN apk update && rm -rf /var/cache/apk/*
ADD $GISTURL /tmp/run.sh
RUN chmod +x /tmp/run.sh
RUN /tmp/run.sh

CMD ["/tmp/run.sh"]
