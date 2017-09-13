#!/bin/sh

echo > /etc/crontabs/root
for f in /etc/cron.root.d/*
do
    cat <<EOF >> /etc/crontabs/root
##################
## $f
EOF
    cat "$f" >> /etc/crontabs/root
done

crond -c /etc/crontabs -L /dev/stdout -f &
wait
