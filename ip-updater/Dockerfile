FROM alpine:latest
RUN apk add --no-cache curl jq
COPY update-github-ips.sh /update.sh
COPY crontab /etc/crontabs/root
CMD crond -f