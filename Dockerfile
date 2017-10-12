FROM python:3.6.3-alpine3.6

RUN apk --no-cache add ca-certificates

RUN mkdir -p /etc/cron.root.d

ADD entry.sh /entry.sh


ENTRYPOINT ["/entry.sh"]
