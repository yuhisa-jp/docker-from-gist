FROM alpine:3.4

MAINTAINER "yuhisa-jp"

ENV GISTURL="yuhisa-jp/4cbcd6dc79570c55f6d948a82dbfca91"

RUN apk update && rm -rf /var/cache/apk/*
ADD https://gist.githubusercontent.com/$GISTURL/raw /tmp/run.sh
RUN chmod +x /tmp/run.sh
RUN /tmp/run.sh

CMD ["/tmp/run.sh"]
