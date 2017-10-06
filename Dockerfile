FROM alpine:latest

RUN \
    apk update && \
    apk --no-cache add ca-certificates wget docker bash curl
RUN \
    apk add 'py-pip' && \
    pip install 'docker-compose==1.16.1'
RUN mkdir -p /etc/cron.root.d

ADD entry.sh /entry.sh


ENTRYPOINT ["/entry.sh"]
